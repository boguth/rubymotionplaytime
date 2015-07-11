# Views
A view, what you see on the screen, is organized into subviews. These views and subviews are UIView objects. Their important properties are:

  1. The ```frame``` property which contain a view's x,y coordinates and its width height dimensions.
  2. The ```subviews``` property, which is an array of all the views subviews, sorted back to front visibility.

##Frames
A frame describes its shape and position relative it its parent. If, on the window (the app's base view), a view has its coordinates at 10,10 and I want its subview to appear at 50,50, then I have to make the subview have the coordinates 40,40.

##Window
The window is the base view of the app. The window is a subclass of UIView. It's called UIWindow.

##Accessing the Delegate Function From that IRB-Esque Thing
```delegate = UIApplication.sharedApplication.delegate``` allows us to access that view. ```delegate = UIApplication.sharedApplication``` gives us the object that is our application. It is preconfigured to use our delegate function that we created in app_delegate.rb.
