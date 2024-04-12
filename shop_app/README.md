# shop_app

Shop App,a Flutter project represents a basic yet functional shopping app UI, complete with product filtering, display, and sample cart functionality. It showcases fundamental concepts such as widget composition, state management, and data organization in a Flutter app.

It comprises several files to create a functional shopping app. Starting with `main.dart`, it initializes the app with a root widget called `MyApp`, which sets up the overall theme of the application using `MaterialApp`. 

Moving on to `home_page.dart`, this file defines the `HomePage` widget as a `StatefulWidget`, allowing dynamic changes to its content. The home page features a search bar with an associated filtering mechanism using chip widgets. These chips enable users to filter products based on categories like Adidas, Nike, etc. The product list is displayed using `ProductCard` widgets, each showcasing an image, title, and price. The products themselves are sourced from a separate file called `global_variables.dart`, which holds sample product data and a simulated cart.

Within `global_variables.dart`, product information is stored as dictionaries, including details like title, price, image URL, company, and available sizes. Additionally, a mock cart is defined to demonstrate how items could be added to a shopping cart feature.

Overall, this Flutter code 