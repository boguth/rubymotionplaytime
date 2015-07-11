# rubymotionplaytime
This is my playground for RubyMotion iOS projects.

##Requirements
- Xcode updated to most recent version.
- RubyMotion (check email for key)
- An iOS Developer account so that you can provision apps (having a provisioned app is necessary if you want to run/test it on a device or sell it on the app store). This costs 99$.


##Resources
1. [RubyMotion's Getting Started Guide](http://www.rubymotion.com/developers/guides/manuals/cocoa/getting-started/)
2. [RubyMotion's GitHub Repository of Sample Projects] (https://github.com/HipByte/RubyMotionSamples)
3. [RubyMotion Tutorial](http://rubymotion-tutorial.com/)

## Things To Know
- RubyMotion bases its object model on Objective-C Runtime - a library that provides support for the dynamic properties of the Objective C language (i.e. - functions and data structures that Objective C uses.). Coming from Ruby, I think of this library like one of Ruby's more fundamental classes, like the string class, which provides both data structures and methods to the Ruby language. Swift, Apple's recently developed programming language, also uses this library.
Here is an example:

  * Objective-C Runtime has a method called class_getName. It does what you think it does. Objective -C implements it like this:

  ```
  const char * class_getName ( Class cls );

  ```
  2. Swift implements it like this:

  ```
  func class_getName(_ cls: AnyClass!) -> UnsafePointer<Int8>

  ```

- Because RubyMotion bases its object structure off of the Objective-C Runtime library, its Ruby classes, methods and objects are Objective-C classes, methods and objects respectively. By sharing the same object model infrastructure, Objective-C and RubyMotion APIs can be interchangeable at no additional performance expense. To me, this means the RubyMotion can be used to make iphone apps just like Objective-C can.


