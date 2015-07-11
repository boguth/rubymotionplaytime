

# In iOS-land, when the user launches our app the system sets up a bunch of stuff for us. We need to give the OS an object which can respond to different events during that process; we refer to that object as the "application delegate". It gets callbacks for when the app starts, ends, goes to the background, gets a push notification, all sorts of fun stuff. In other words, this is RubyMotion's API for the Apple iOS. Sounds a lot like a controller.

class AppDelegate
    # The arguments in this method definition are wacky. This is an exmaple of an Objectice-C convention. See README for an explanation of named arguments.

  def application(application, didFinishLaunchingWithOptions:launchOptions) # Some apps may use launchOptions to determine if the app should be started or not.

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    #The above line of code creates a UIWindow that's set to the size of the screen.
    @window.makeKeyAndVisible
    #the makeKeyAndVisible thing tells the OS that this window will be the one receiving touch events and that it should be visible.


    @blue_view = UIView.alloc.initWithFrame(CGRectMake(10,10,100,100))
    #This creates a new view. Notice that it's a rectangle. It's coordinates are 10,10 (relative to its parent view) and its width and height are 100 and 100 respectively.
    @blue_view.backgroundColor = UIColor.blueColor
    #We give the view a color.
    @window.addSubview(@blue_view)
    #Then we add the view as a subview of the main Window. This positions it relative to the main window.

    @green_view = UIView.alloc.initWithFrame(CGRectMake(30,30,40,40))
    @green_view.backgroundColor = UIColor.greenColor
    @window.addSubview(@green_view)

    @red_view = UIView.alloc.initWithFrame(CGRectMake(30,30,40,40))
    @red_view.backgroundColor = UIColor.redColor
    @blue_view.addSubview(@red_view)

    @orange_view = UIView.alloc.initWithFrame(CGRectMake(260,260,40,40))
    @orange_view.backgroundColor = UIColor.orangeColor
    @window.addSubview(@orange_view)
    true
  end
end


############Original code in App delegate##############

# alert = UIAlertView.new #UIAlertViews are the blue popups you see.
    # alert.message = "Hello Motion!"
    # alert.show\
    # puts "Hello again!"
    # rootViewController = UIViewController.alloc.init
    # rootViewController.title = 'HelloMotion'
    # rootViewController.title=('HelloMotion')
    # rootViewController.view.backgroundColor = UIColor.whiteColor

    # navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    # @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    # @window.rootViewController = navigationController
    # @window.makeKeyAndVisible
