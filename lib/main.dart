import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:razorpay_integration/api_constants.dart';
import 'package:razorpay_integration/fill_image_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RazorPay_Integration',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'RazorPay_Integration'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Razorpay? _razorpay;
  @override
  void initState() {
    super.initState();
    _razorpay = Razorpay();
    _razorpay?.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
    _razorpay?.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
  }

  @override
  void dispose() {
    super.dispose();
    _razorpay?.clear();
  }

  void openGateway() async {
    var options = {
      'key': API_KEY,
      'amount': 49900,
      'name': 'Flutter Development Course',
      'description': 'Payment',
      'prefill': {
        'contact': '9999999999',
        'email': 'courses.flutter@gmail.com'
      },
    };
    try {
      _razorpay?.open(options);
    } catch (e) {
      debugPrint('Erro: $e');
    }
  }

  void _handlePaymentSuccess(PaymentSuccessResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("PAYMENT SUCCESSFUL: ${response.paymentId}"),
      backgroundColor: Colors.green,
    ));
  }

  void _handlePaymentError(PaymentFailureResponse response) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("PAYMENT ERROR: ${response.code} - ${response.message}"),
      backgroundColor: Colors.red,
    ));
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // TRY THIS: Try changing the color here to a specific color (to
          // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
          // change color while the other colors stay the same.
          backgroundColor: Colors.blue,
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.all(20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  FillImageCard(
                    onTap: openGateway,
                    width: 200,
                    heightImage: 100,
                    imageProvider: const AssetImage('lib/assets/image.png'),
                    title: _title(),
                    description: _content(),
                  ),
                  FillImageCard(
                    onTap: openGateway,
                    width: 200,
                    heightImage: 100,
                    imageProvider: const AssetImage('lib/assets/image.png'),
                    title: _title(),
                    description: _content(),
                  ),
                  FillImageCard(
                    onTap: openGateway,
                    width: 200,
                    heightImage: 100,
                    imageProvider: const AssetImage('lib/assets/image.png'),
                    title: _title(),
                    description: _content(),
                  ),
                  FillImageCard(
                    onTap: openGateway,
                    width: 200,
                    heightImage: 100,
                    imageProvider: const AssetImage('lib/assets/image.png'),
                    title: _title(),
                    description: _content(),
                  ),
                  FillImageCard(
                    onTap: openGateway,
                    width: 200,
                    heightImage: 100,
                    imageProvider: const AssetImage('lib/assets/image.png'),
                    title: _title(),
                    description: _content(),
                  ),
                  FillImageCard(
                    onTap: openGateway,
                    width: 200,
                    heightImage: 100,
                    imageProvider: const AssetImage('lib/assets/image.png'),
                    title: _title(),
                    description: _content(),
                  ),
                  FillImageCard(
                    onTap: openGateway,
                    width: 200,
                    heightImage: 100,
                    imageProvider: const AssetImage('lib/assets/image.png'),
                    title: _title(),
                    description: _content(),
                  ),
                  FillImageCard(
                    onTap: openGateway,
                    width: 200,
                    heightImage: 100,
                    imageProvider: const AssetImage('lib/assets/image.png'),
                    title: _title(),
                    description: _content(),
                  ),
                  FillImageCard(
                    onTap: openGateway,
                    width: 200,
                    heightImage: 100,
                    imageProvider: const AssetImage('lib/assets/image.png'),
                    title: _title(),
                    description: _content(),
                  ),
                  FillImageCard(
                    onTap: openGateway,
                    width: 200,
                    heightImage: 100,
                    imageProvider: const AssetImage('lib/assets/image.png'),
                    title: _title(),
                    description: _content(),
                  ),
                  FillImageCard(
                    onTap: openGateway,
                    width: 200,
                    heightImage: 100,
                    imageProvider: const AssetImage('lib/assets/image.png'),
                    title: _title(),
                    description: _content(),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  _title() {
    return const Text(
      'Flutter Dev Course',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }

  _content() {
    return const Text('By Kanhaiya Dutta',
        style: TextStyle(fontSize: 12, fontStyle: FontStyle.italic));
  }
}
