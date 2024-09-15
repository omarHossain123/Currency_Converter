import 'package:flutter/cupertino.dart';


// Stateful widget for the Cupertino currency converter page
class CurrencyConverterCupertinoPage extends StatefulWidget {
  const CurrencyConverterCupertinoPage({super.key});

  @override
  State<CurrencyConverterCupertinoPage> createState() =>
      _CurrencyConverterCupertinoPageState();
}


// State class for managing the UI and conversion logic
class _CurrencyConverterCupertinoPageState
    extends State<CurrencyConverterCupertinoPage> {
  double result = 0;

  // Controller to get the input from the text field
  final TextEditingController textEditingController = TextEditingController();

  // Function to perform the conversion from USD to CAD
  void convert() {
  result = double.parse(textEditingController.text) * 1.36; 
  setState(() {});
}


  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      // Background color for the page
      backgroundColor: CupertinoColors.systemGrey3,
      
      // The navigation bar (app bar) for the Cupertino design
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text('Currency Converter'),
      ),
      
      // The body of the page (centered content)
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Displays the converted amount in INR
              Text(
                'CAD ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 55,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              
              // Input field for entering the USD amount
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: CupertinoColors.black,
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Please enter the amount in USD',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 10),
              
              // Convert button to trigger the conversion
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text('Convert'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}