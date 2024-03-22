# clip_rrect_and_gradient

The poject showcases an image within a container with a gradient background. The application is structured using the MaterialApp widget, which provides the overall theme and navigation structure. The main screen, represented by MyHomePage, features a Scaffold with an AppBar containing the app's title. 

The body of the app utilizes a Center widget to center its content vertically and horizontally. Inside the Center widget, there's a Container that spans the entire width of the screen (double.infinity) and has a gradient background defined by LinearGradient. The gradient transitions from a light orange shade to a deeper purple shade, creating a visually appealing backdrop for the content.

Within the Container, there's a SizedBox widget with a fixed width and height of 100. This SizedBox contains an Image.asset widget that displays an image loaded from the assets/images/Capture.PNG file. The image is clipped with rounded corners using the ClipRRect widget, which applies a circular border radius of 30 to the image, giving it a softer, rounded appearance.

