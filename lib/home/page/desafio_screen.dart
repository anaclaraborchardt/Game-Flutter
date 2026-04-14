import 'package:flutter/material.dart';

import 'home.dart';

class DesafioScreen extends StatelessWidget {
  const DesafioScreen({super.key});

  void _handleBack(BuildContext context) {
    final navigator = Navigator.of(context);

    if (navigator.canPop()) {
      navigator.pop();
      return;
    }

    navigator.pushReplacement(
      MaterialPageRoute(builder: (_) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    const Color darkText = Color(0xFF28283C);
    const Color lightText = Color(0xFF88889D);
    const Color primaryPurple = Color(0xFF6B4DFA);
    const Color progressBackground = Color(0xFFEBEBFA);
    const Color xpBackground = Color(0xFFEBEBFA);
    const Color codeHeaderBackground = Color(0xFFF2F3F7);
    const Color buttonGray = Color(0xFFF2F3F7);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          'Desafio',
          style: TextStyle(
            color: darkText,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: darkText),
          onPressed: () => _handleBack(context),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Center(
              child: Text(
                '2/5',
                style: TextStyle(
                  color: lightText,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const LinearProgressIndicator(
                  value: 0.4,
                  minHeight: 8,
                  backgroundColor: progressBackground,
                  valueColor: AlwaysStoppedAnimation<Color>(primaryPurple),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Contador de Cliques',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: darkText,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: xpBackground,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Text(
                      '10 XP',
                      style: TextStyle(
                        color: primaryPurple,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                'Complete o c\u00f3digo para criar um\ncontador que aumenta ao clicar\nno bot\u00e3o.',
                style: TextStyle(
                  fontSize: 16,
                  color: darkText,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFE5E5E5)),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                      decoration: const BoxDecoration(
                        color: codeHeaderBackground,
                        borderRadius: BorderRadius.vertical(top: Radius.circular(11)),
                      ),
                      child: const Text(
                        'main.dart',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: darkText,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(16),
                      child: _CodeHighlightMock(),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.play_arrow, color: primaryPurple),
                      label: const Text(
                        'Executar',
                        style: TextStyle(color: primaryPurple, fontWeight: FontWeight.bold),
                      ),
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        side: const BorderSide(color: primaryPurple),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        backgroundColor: progressBackground.withValues(alpha: 0.5),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        backgroundColor: buttonGray,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        'Ver Solu\u00e7\u00e3o',
                        style: TextStyle(color: darkText, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xFFE5E5E5)),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Seu c\u00f3digo est\u00e1 funcionando?',
                  style: TextStyle(
                    color: lightText,
                    fontSize: 14,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: primaryPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Sim, enviar solu\u00e7\u00e3o',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

class _CodeHighlightMock extends StatelessWidget {
  const _CodeHighlightMock();

  @override
  Widget build(BuildContext context) {
    const TextStyle codeStyle = TextStyle(
      fontFamily: 'monospace',
      fontSize: 13,
      height: 1.5,
    );

    return RichText(
      text: const TextSpan(
        style: codeStyle,
        children: [
          TextSpan(text: 'import ', style: TextStyle(color: Colors.purple)),
          TextSpan(text: "'package:flutter/material.dart';\n\n", style: TextStyle(color: Colors.green)),
          TextSpan(text: 'void ', style: TextStyle(color: Colors.blue)),
          TextSpan(text: 'main() {\n  runApp(MyApp());\n}\n\n', style: TextStyle(color: Color(0xFF28283C))),
          TextSpan(text: 'class ', style: TextStyle(color: Colors.blue)),
          TextSpan(text: 'MyApp ', style: TextStyle(color: Color(0xFF28283C))),
          TextSpan(text: 'extends ', style: TextStyle(color: Colors.blue)),
          TextSpan(text: 'StatelessWidget {\n', style: TextStyle(color: Color(0xFF28283C))),
          TextSpan(text: '  @override\n', style: TextStyle(color: Colors.green)),
          TextSpan(text: '  Widget build(BuildContext context) {\n', style: TextStyle(color: Color(0xFF28283C))),
          TextSpan(text: '    return ', style: TextStyle(color: Colors.purple)),
          TextSpan(text: 'MaterialApp(\n      home: Scaffold(\n        appBar: AppBar(title: ', style: TextStyle(color: Color(0xFF28283C))),
          TextSpan(text: 'Text', style: TextStyle(color: Colors.blue)),
          TextSpan(text: '(', style: TextStyle(color: Color(0xFF28283C))),
          TextSpan(text: '"Contador"', style: TextStyle(color: Colors.green)),
          TextSpan(text: ')),\n        body: Center(\n          child: Column(\n            mainAxisAlignment: MainAxisAlignment.center,\n            children: [\n              Text(', style: TextStyle(color: Color(0xFF28283C))),
          TextSpan(text: "'0'", style: TextStyle(color: Colors.green)),
          TextSpan(text: ', style: TextStyle(fontSize: 32)),\n              SizedBox(height: 20),\n              ElevatedButton(\n                onPressed: () {},\n                child: Text(', style: TextStyle(color: Color(0xFF28283C))),
          TextSpan(text: "'Incrementar'", style: TextStyle(color: Colors.green)),
          TextSpan(text: '),\n              ),\n            ],\n          ),\n        ),\n      ),\n    );\n  }\n}', style: TextStyle(color: Color(0xFF28283C))),
        ],
      ),
    );
  }
}
