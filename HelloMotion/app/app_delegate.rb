

# In iOS-land, when the user launches our app the system sets up a bunch of stuff for us. We need to give the OS an object which can respond to different events during that process; we refer to that object as the "application delegate". It gets callbacks for when the app starts, ends, goes to the background, gets a push notification, all sorts of fun stuff. In other words, this is RubyMotion's API for the Apple iOS.

class AppDelegate
    # The arguments in this method definition are wacky. This is an exmaple of an Objectice-C convention. See README for an explanation of named arguments.

  def application(application, didFinishLaunchingWithOptions:launchOptions) # Some apps may use launchOptions to determine if the app should be started or not.
    alert = UIAlertView.new #UIAlertViews are the blue popups you see.
    alert.message = "Hello Motion!"
    alert.show

    puts "Hello again!"
    # rootViewController = UIViewController.alloc.init
    # rootViewController.title = 'HelloMotion'
    # rootViewController.title=('HelloMotion')
    # rootViewController.view.backgroundColor = UIColor.whiteColor

    # navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    # @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    # @window.rootViewController = navigationController
    # @window.makeKeyAndVisible

    true
  end
end


