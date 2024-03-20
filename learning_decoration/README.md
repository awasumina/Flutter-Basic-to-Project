# learning_decoration

The Flutter application written in Dart. It defines a simple UI with a MaterialApp containing a single route, MyHomePage, which is a StatefulWidget. The theme of the app is customized using the ThemeData class, with a specific color scheme derived from a seed color (deepPurple) and Material 3 design enabled.

Within MyHomePage, there's a Scaffold widget representing the basic structure of the app's layout. The Scaffold includes an AppBar with a title and a body section. Inside the body, there's a Container widget that encompasses a centered child Container, creating a visual box. This inner Container has a fixed width and height, a blue-grey background color, and a circular shape due to BoxShape.circle being specified.

Additionally, the inner Container has several decorations applied to it. It has a yellowAccent-colored border with a thickness of 10, giving it a prominent outline. A box shadow effect is also added to create a sense of depth, with a blue shadow color, a blur radius of 11, and a spread radius of 7.

Overall, the code demonstrates how to create a basic Flutter UI with custom themes, structural elements like Scaffold and Container, and decorative effects such as borders and shadows to enhance the visual appeal of the app's components.