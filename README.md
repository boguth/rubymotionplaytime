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

- RubyMotion is a variant of Ruby. What that means is that you can't use some of Ruby's extremely dynamic methods like eval, and that there are some non-standard features, like:

    ```ruby

    functions.with(some, named: parameters).

    ```

- This allows your Ruby code to be compiled to machine code identical to Objective-C; in other words, the device can't tell the difference between RubyMotion and normal iOS apps. RubyMotion mimics how Objective-C is compiled, thus making the two languages indistinguishable by the iPhone's standards. How?


- RubyMotion bases its object model on Objective-C Runtime - a library that provides support for the dynamic properties of the Objective C language (i.e. - functions and data structures that Objective C uses.). Coming from Ruby, I think of this library like one of Ruby's more fundamental classes, like the string class, which provides both data structures and methods to the Ruby language. Swift, Apple's recently developed programming language, also uses this library.
Here is an example:

  * Objective-C Runtime has a method called class_getName. It does what you think it does. Objective -C implements it like this:

    ```

    const char * class_getName ( Class cls );

    ```
  * Swift implements it like this:

    ```
    func class_getName(_ cls: AnyClass!) -> UnsafePointer<Int8>

    ```

- Because RubyMotion bases its object structure off of the Objective-C Runtime library, its Ruby classes, methods and objects are Objective-C classes, methods and objects respectively. By sharing the same object model infrastructure, Objective-C and RubyMotion APIs can be interchangeable at no additional performance expense. This means the RubyMotion can be used to make iphone apps just like Objective-C can.

- RubyMotion uses rake for all of its functions, and the rake command runs Rakefile which defines the set of moethods/tasks that can be attached to rake. It gets these methods and tasks from the require 'motion/project/template/ios' line.

##New Concepts to a Rubyist

## Named Arguments
  - Ruby, like most other languages, creates methods that take arguments like this:

    ```ruby

        def method
          initialize(arg1, arg2, arg3)
            @class_name = arg1
            @width = arg2
            @height = arg3
          end
        end

    ```

  Objective-C is different. It has something called named arguments.In short, when you use named arguments you declare argument types when you pass them in. That sentence is probably super confusing, so here is an example of what named arguments would look like if Ruby used them:


    ```ruby

        def method
          initialize(class_name: arg1, width: arg2, height: arg3)
            @class_name = arg1
            @width = arg2
            @height = arg3
          end
        end

    ```
  According to Objective-C'ists, this is done to reduce ambiguity and reduce the amount of times the programmer has to look at references or docs to find out about argument order when using a method.

  RubyMotion decided to keep this feature so that that it and the original Apple API's were compatible. Look at /app/app_delegate.rb for an example.

##Tips & Tricks

- Once you create your project by typing motion create [project name], you can then type rake. This creates a set of files, fires up the iphone simulator, and then runs an interactive console (RubyMotions version of IRB) from which you can type commands that'll pop up on your iphone simulator.


