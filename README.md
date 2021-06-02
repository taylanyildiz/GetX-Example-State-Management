# getx_example

GetX State Mangement.

### GetX model class. [GetBuilder - Get.pu()]

```dart
class Counter extends GetxController{
    int count = 0;

    void increment(){
        count++;
        update();
    }

    void decrease(){
        count--;
        update();
    }
}
```

### Calling MobX model class.

GetX class must be raised before listening is done
 => [Get.put(Counter())]
```dart
@override
Widget build(BuildContext context){
    final countController = Get.put(Counter());
    return Scaffold(
        body: Center(
            child: Column(
                children:[
                    GetxBuilder<Counter>(
                        builder:(_) => Text('${_.count}'),
                    ),
                    MaterialButton(
                        onPressed:() => countController.increment(),
                    ),
                    MaterialButton(
                        onPressed:() => countController.decrease(),
                    )
                ]
            )
        )
    );
}

```

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
