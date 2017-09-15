# FUSION
FUSION - yet another architecture for iOS. Simple and clean.

### Philosophy
The main purpose for creating FUSION architecture is to find clean and easy way to develop iOS Applications. On my work I tried MVC, VIPER, VIP and others.. But one of them was too hard to understand (you need to spend some time to explain main concepts to new developers), another is not extendable. With FUSION you will receive:
- readable and understandable code for new developers;
- modularity (you can easily copy paste modules or even scenes between projects);
- testability (you can easily write tests for you business logic, not for you View Controllers);
- and of course you receive light View Controllers:]

You can think that FUSION is not an architecture but approach to develop iOS Applications.

### Main concepts
Here is the main concepts:

![FUSION Diagram](https://raw.githubusercontent.com/pffan91/FUSION/master/FUSION.png)

- Worker - here is where all your business logic located. You name worker by key concept. For example you can have UserWorker where will be methods for getting user from server, updating user, creating user, checking if user authorized, cache user and so on. Public methods must be class method so you can easily call them;
- Scene - this represents separate Screen. It contains with ViewController, ViewModel, Configurator, InputData and Animations;
- ViewController - this connects your UI with data. ViewController call Workers to get data, then data directly comes in ViewModel and then you can visualize it;
- ViewModel - this is where you store data, preparing it for visualizing in ViewController. You must have separate ViewModel for each ViewController;
- Configurator (optional) - with this concept you can easily inject new ViewController with some data;
- InputData (optional) - this is readonly properties which you inject in ViewController;
- Animation (optional) - stores all animation which can be used by ViewController. You must have separate Animations for each ViewController. See more about this concept here: https://medium.com/@vsemenchenko/decomposing-viewcontrollers-animations-4934a8f6f339

### Tutorial

### Templates Installation
Automatic:
- just run install.sh script from FUSION directory

Manual:
- Move FUSION folder in /FUSION/Templates/ to ~/Library/Developer/Xcode/Templates then relaunch XCode

### TODO:
1. Complete README - DONE
2. Add example projects
3. Write tutorial


### Contact me
If you have any questions you feel free to contact with me - developer.semenchenko@gmail.com (Vladyslav Semenchenko)
