import 'package:flutter/material.dart';

class TransactionFormPage extends StatefulWidget {
  const TransactionFormPage({Key? key}) : super(key: key);

  @override
  State<TransactionFormPage> createState() => _TransactionFormPageState();
}

class _TransactionFormPageState extends State<TransactionFormPage> {
  final List<String> _typeTransaction = ['Fixo', 'Único'];
  final List<String> _categoryTransaction = ['Receita', 'Despesa'];
  final List<String> _subCategoryReceita = ['Salário', 'dfds'];
  final List<String> _subReceitaUnica = [
    'Serviço',
    'Receita de Transação Única'
  ];

  String? _selectedType = "Fixo";
  String? _selectedCategory = "Receita";
  String? _selectedSubCategory = "Categoria";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.black,
        title: const Text("Adicionar Transação"),
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          color: Theme.of(context).colorScheme.background,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Form(
              child: ListView(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Título",
                        contentPadding: const EdgeInsets.all(20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Descrição",
                        contentPadding: const EdgeInsets.all(20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 1),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 1),
                        ),
                      ),
                      value: _selectedType,
                      items: _typeTransaction
                          .map(
                            (type) => DropdownMenuItem<String>(
                              value: type,
                              child: Text(type),
                            ),
                          )
                          .toList(),
                      onChanged: (type) {
                        setState(() => _selectedType = type);
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(width: 1),
                        ),
                      ),
                      value: _selectedCategory,
                      items: _categoryTransaction
                          .map(
                            (category) => DropdownMenuItem<String>(
                              value: category,
                              child: Text(category),
                            ),
                          )
                          .toList(),
                      onChanged: (category) {
                        setState(() => _selectedCategory = category);
                        FocusScope.of(context).requestFocus(FocusNode());
                      },
                    ),
                  ),
                  /* const SizedBox(
                    height: 20,
                  ),
                  if (_selectedType == "Fixo")
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 1),
                          ),
                        ),
                        value: _selectedSubCategory,
                        items: _subCategoryReceita
                            .map(
                              (subCategory) => DropdownMenuItem<String>(
                                value: subCategory,
                                child: Text(subCategory),
                              ),
                            )
                            .toList(),
                        onChanged: (subCategory) {
                          setState(() => _selectedSubCategory = subCategory);
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                      ),
                    ),
                  if (_selectedType == "Único")
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.secondary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: const BorderSide(width: 1),
                          ),
                        ),
                        value: _selectedSubCategory,
                        items: _subReceitaUnica
                            .map(
                              (subCategory) => DropdownMenuItem<String>(
                                value: subCategory,
                                child: Text(subCategory),
                              ),
                            )
                            .toList(),
                        onChanged: (subCategory) {
                          setState(() => _selectedSubCategory = subCategory);
                          FocusScope.of(context).requestFocus(FocusNode());
                        },
                      ),
                    ), */
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.save,
          color: Colors.purple,
        ),
      ),
    );
  }
}
