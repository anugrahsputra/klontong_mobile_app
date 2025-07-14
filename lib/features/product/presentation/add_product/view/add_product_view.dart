import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../di.dart';
import '../../../product.dart';

part 'add_product_view.component.dart';

class AddProductView extends StatefulWidget {
  const AddProductView({super.key});

  @override
  State<AddProductView> createState() => _AddProductViewState();
}

class _AddProductViewState extends State<AddProductView> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _widthController = TextEditingController();
  final TextEditingController _lengthController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  String? _selectedCategory;
  int? _selectedCategoryId;

  final List<Map<String, dynamic>> _categories = [
    {'id': 14, 'name': 'Cemilan'},
    {'id': 15, 'name': 'Minuman'},
    {'id': 16, 'name': 'Makanan'},
    {'id': 17, 'name': 'Peralatan'},
  ];

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _priceController.dispose();
    _weightController.dispose();
    _widthController.dispose();
    _lengthController.dispose();
    _heightController.dispose();
    super.dispose();
  }

  void _onCategoryChanged(String? value) {
    setState(() {
      _selectedCategory = value;
      _selectedCategoryId = _categories.firstWhere((cat) => cat['name'] == value)['id'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddProductBloc>(
      create: (context) => di<AddProductBloc>(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        body: BlocConsumer<AddProductBloc, AddProductState>(
          listener: (context, state) {
            if (!state.isLoading && state.hasSubmitted && state.errorMessage == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Product saved successfully!'),
                  backgroundColor: Colors.green,
                ),
              );
              Navigator.pop(context);
            } else if (state.errorMessage != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage!), backgroundColor: Colors.red),
              );
            }
          },
          builder: (context, state) {
            return Form(
              key: _formKey,
              child: SingleChildScrollView(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomTextField(
                      label: 'Product Name',
                      controller: _nameController,
                      onChanged: (value) =>
                          context.read<AddProductBloc>().add(AddProductEvent.onNameChanged(value)),
                      validator: (value) =>
                          value == null || value.isEmpty ? 'Please enter product name' : null,
                    ),
                    CustomDropdown(
                      label: 'Category',
                      value: _selectedCategory,
                      categories: _categories,
                      onChanged: (value) {
                        _onCategoryChanged(value);
                        context.read<AddProductBloc>()
                          ..add(AddProductEvent.onCategoryNameChanged(value ?? ''))
                          ..add(
                            AddProductEvent.onCategoryIdChanged(
                              _categories.firstWhere((cat) => cat['name'] == value)['id'],
                            ),
                          );
                      },
                      validator: (value) =>
                          value == null || value.isEmpty ? 'Please select a category' : null,
                    ),
                    CustomTextField(
                      label: 'Description',
                      controller: _descriptionController,
                      maxLines: 4,
                      onChanged: (value) => context.read<AddProductBloc>().add(
                        AddProductEvent.onDescriptionChanged(value),
                      ),
                      validator: (value) =>
                          value == null || value.isEmpty ? 'Please enter description' : null,
                    ),
                    CustomTextField(
                      label: 'Price',
                      controller: _priceController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => context.read<AddProductBloc>().add(
                        AddProductEvent.onHargaChanged(int.tryParse(value) ?? 0),
                      ),
                      validator: _numberValidator('price'),
                    ),
                    CustomTextField(
                      label: 'Weight',
                      controller: _weightController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => context.read<AddProductBloc>().add(
                        AddProductEvent.onWeightChanged(int.tryParse(value) ?? 0),
                      ),
                      validator: _numberValidator('weight'),
                    ),
                    CustomTextField(
                      label: 'Width',
                      controller: _widthController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => context.read<AddProductBloc>().add(
                        AddProductEvent.onWidthChanged(int.tryParse(value) ?? 0),
                      ),
                      validator: _numberValidator('width'),
                    ),
                    CustomTextField(
                      label: 'Length',
                      controller: _lengthController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => context.read<AddProductBloc>().add(
                        AddProductEvent.onLengthChanged(int.tryParse(value) ?? 0),
                      ),
                      validator: _numberValidator('length'),
                    ),
                    CustomTextField(
                      label: 'Height',
                      controller: _heightController,
                      keyboardType: TextInputType.number,
                      onChanged: (value) => context.read<AddProductBloc>().add(
                        AddProductEvent.onHeightChanged(int.tryParse(value) ?? 0),
                      ),
                      validator: _numberValidator('height'),
                    ),
                    SizedBox(height: 20),
                    SaveButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          context.read<AddProductBloc>().add(AddProductEvent.submit());
                        }
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  String? Function(String?) _numberValidator(String label) {
    return (value) {
      if (value == null || value.isEmpty) return 'Please enter $label';
      if (int.tryParse(value) == null) return 'Please enter valid number';
      return null;
    };
  }
}