# Karnel
Karnel is the typo-free non-bloated language for everything you need!

## No bloat
### Enable
You might be wondering why Karnel is non-bloated. <br>
This is because you **must** enable the key features. <br>

This enables the language itself. It is needed in **every** Karnel program.
```
enable Karnel
```

Other important things to enable are:
```
enable Comments \\ To allow the use of this comment
enable Memory \\ To allow the use of memory
enable Executable \\ To allow the program to be executed 
```

You might think that ```enable``` itself is bloated. <br>
And you are right. <br>

To prevent this you can disable it. 
```
enable Disable \\ To disable stuff

disable Enable \\ Disable enable
disable Disable \\ Disable disable again
```

### Include
Another important feature of Karnel is including stuff. <br>

First enable include
```
enable Include
```

Now you can include stuff, but this won't work for now.
```
include function: Karnel~IO~Print \\ Paths in Karnel will be discussed later
```

In Karnel you can only include things if they are used after and you must enable functions first.
```
enable Include \\ Allow including

enable Functions \\ Allow functions

include function: Karnel~IO~Print \\ Include the print function

print "String" \\ Print "String" into the terminal
```

Here is a ```Hello, World!``` program in Karnel
```
enable Karnel

enable Comments \\ Now comments can be used. Not before
enable Memory \\ Allow the use of memory
enable Executable \\ Allow execution of the program

enable include \\ Allow including stuff

enable Datatypes \\ Allow the use of datatypes
enable Datatypes.Strings \\ Allow the use of Strings
\\ Keep in mind that Strings are just arrays of chars.
\\ So you can also enable them.
\\ enable Datatypes.ArrayOfChars
enable Variables \\ Allow use of variables
enable Functions \\ Allow use of functions

include datatype: Karnel~Datatype~String \\ Include the string datatype
include function: Karnel~IO~Print \\ Include the print function

\\ Create the variable 'message' and assign the String "Hello, World!" to it. 
\\ The keyword 'auto' automatically assigns the datatype String to the
variable.
new auto message = "Hello, World!"; type = String

\\ Print the value of 'message'
print; arguments = {message} \\ Curly braces are used for arrays
```

## Datatypes
Datatypes in Karnel are very simple. <br>

To enable them just add this to your program.
```
enable Datatypes
```

After that you can include datatypes. Make sure to enable them before.

### Strings

To use strings, put this into your program.
```
enable Datatypes.Strings
include datatype: Karnel~Datatype~String
\\ Or use arrays of chars
\\ enable Datatypes.Arrays.Chars
\\ include datatype: Karnel~Datatype~Array~Char
```

There are also special string types.

#### Names
```
enable Datatypes.Strings.Names \\ To activate the use of names

enable Datatypes.Strings.Names.Firstnames \\ Firstname
enable Datatypes.Strings.Names.Secondnames \\ Secondname
\\ Karnel does not support third names.
\\ If you have a third name you're out of luck.

enable Datatypes.Strings.Names.Familynames \\ Familyname

include datatype: Karnel~Datatype~String~Firstname
include datatype: Karnel~Datatype~String~Secondname
include datatype: Karnel~Datatype~String~Familyname
```

#### Sentences
```
enable Datatypes.Strings.Sentences \\ Enable the use of sentences
enable Datatypes.Strings.Sentences.Declarative \\ Normal statement like "The cat is grey."
enable Datatypes.Strings.Sentences.Interrogative \\ Questions like "Is the cat grey?"
enable Datatypes.Strings.Sentences.Imperative \\ Commands like "Dye the cat blue!"
enable Datatypes.Strings.Sentences.Exclamatory \\ Emotions like "The cat is grey!"

include datatype: Karnel~Datatype~String~Sentence~Declarative
include datatype: Karnel~Datatype~String~Sentence~Interrogative
include datatype: Karnel~Datatype~String~Sentence~Imperative
include datatype: Karnel~Datatype~String~Sentence~Exclamatory

```
> ⚠️ Mixing sentence types in one line will result in a ```GrammarViolationException```.

#### Passwords
```
enable Datatypes.Strings.Passwords \\ Enable use of passwords
enable Datatypes.Strings.Passwords.Safe \\ Safe passwords
enable Datatypes.Strings.Passwords.Unsafe \\ Unsafe passwords

include datatype: Karnel~Datatype~String~Password
include datatype: Karnel~Datatype~String~Password~Safe
include datatype: Karnel~Datatype~String~Password~Unsafe
```

### Booleans
To use booleans include this in your program.
```
enable Datatypes.Booleans
include datatype: Karnel~Datatype~Boolean
```

#### Normal booleans
In Karnel a boolean can have one of 69 states.
```
enable Value.Boolean.True              \\ 1: Definitely True
enable Value.Boolean.False             \\ 2: Definitely False
enable Value.Boolean.Maybe             \\ 3: Maybe
enable Value.Boolean.Probably          \\ 4: Likely, but no promises
enable Value.Boolean.ProbablyNot       \\ 5: Doubtful
enable Value.Boolean.Unknown           \\ 6: Nobody knows
enable Value.Boolean.Undefined         \\ 7: Karnel refuses to evaluate
enable Value.Boolean.Indeterminate     \\ 8: Both true and false
enable Value.Boolean.Always            \\ 9: Always true (even when it's not)
enable Value.Boolean.Never             \\ 10: Not even once
enable Value.Boolean.Sometimes         \\ 11: Mood dependent
enable Value.Boolean.Typically         \\ 12: Normal circumstances
enable Value.Boolean.Exceptionally     \\ 13: Only on Tuesdays
enable Value.Boolean.TrueToYou         \\ 14: Personal truth
enable Value.Boolean.FalseToMe         \\ 15: Emotional denial
enable Value.Boolean.Mirage            \\ 16: Looks true until you zoom in
enable Value.Boolean.Ironic            \\ 17: Opposite of what you expect
enable Value.Boolean.Paradoxical       \\ 18: Causes logical collapse
enable Value.Boolean.Axiomatically     \\ 19: Just trust it
enable Value.Boolean.Proven            \\ 20: Backed by three peer-reviewed papers
enable Value.Boolean.Disproven         \\ 21: We don't talk about this one
enable Value.Boolean.Ignored           \\ 22: Value is there but no one checks
enable Value.Boolean.Overlooked        \\ 23: Hidden in plain sight
enable Value.Boolean.Dreamed           \\ 24: Might be a hallucination
enable Value.Boolean.Forgotten         \\ 25: It was something… I swear
enable Value.Boolean.Assumed           \\ 26: You thought it was true
enable Value.Boolean.Believed          \\ 27: Faith-based logic
enable Value.Boolean.Denied            \\ 28: Even if it's true
enable Value.Boolean.Accepted          \\ 29: Collective illusion
enable Value.Boolean.Contextual        \\ 30: Depends on the mood
enable Value.Boolean.Historical        \\ 31: Used to be true in 1986
enable Value.Boolean.FutureTruth       \\ 32: Will be true eventually
enable Value.Boolean.Sarcastic         \\ 33: "Totally true" (it's not)
enable Value.Boolean.Potentially       \\ 34: Could become true
enable Value.Boolean.Corrupted         \\ 35: Bit flipped somewhere
enable Value.Boolean.Redacted          \\ 36: █████████
enable Value.Boolean.Classified        \\ 37: Need clearance
enable Value.Boolean.Quantum           \\ 38: True *and* false
enable Value.Boolean.Glitched          \\ 39: Just blinked to false
enable Value.Boolean.Divine            \\ 40: Only the gods know
enable Value.Boolean.Simulated         \\ 41: True in a dream
enable Value.Boolean.Faked             \\ 42: Pretends to be true
enable Value.Boolean.Mocked            \\ 43: Look at this fake
enable Value.Boolean.Patchy            \\ 44: Truth depends on version
enable Value.Boolean.Legacy            \\ 45: Obsolete logic
enable Value.Boolean.Transcendent      \\ 46: Beyond boolean
enable Value.Boolean.Cynical           \\ 47: Trust no one
enable Value.Boolean.Whimsical         \\ 48: Logic is a game
enable Value.Boolean.Experimental      \\ 49: May crash reality
enable Value.Boolean.Memeified         \\ 50: Logic by meme
enable Value.Boolean.FanTheory         \\ 51: Headcanon level
enable Value.Boolean.UnoReverse        \\ 52: Flips when used
enable Value.Boolean.PossiblyNot       \\ 53: Genuinely unsure
enable Value.Boolean.Cosmic            \\ 54: Intergalactic truth
enable Value.Boolean.Generational      \\ 55: Only true for Gen Z
enable Value.Boolean.Political         \\ 56: Debatable forever
enable Value.Boolean.SociallyAccepted  \\ 57: We all nod politely
enable Value.Boolean.Temporary         \\ 58: True for now
enable Value.Boolean.BugDependent      \\ 59: Working as intended
enable Value.Boolean.NotYetLoaded      \\ 60: Check again later
enable Value.Boolean.Stable            \\ 61: Mostly consistent
enable Value.Boolean.Unstable          \\ 62: Jumps at random
enable Value.Boolean.PseudoTrue        \\ 63: Fake but useful
enable Value.Boolean.Animated          \\ 64: Looks alive
enable Value.Boolean.Recursive         \\ 65: See state 65
enable Value.Boolean.Unknowable        \\ 66: Beyond comprehension
enable Value.Boolean.Nullified         \\ 67: Deleted from logic
enable Value.Boolean.Divided           \\ 68: Even Karnel can't decide
enable Value.Boolean.Transitional      \\ 69: Between two truths
```

#### Double booleans
Double booleans can have two states at once.

#### Quadrouple booleans
Quadrouple booleans can have four states at once.

### Random

The random datatype is very powerful and can make your code behave like intended.
```
enable Datatypes.Random
enable Datatypes.Random.Integer  \\ Random integers
enable Datatypes.Random.Float    \\ Random floating point numbers
enable Datatypes.Random.String   \\ Random strings
enable Datatypes.Random.Boolean  \\ Random boolean 
enable Datatypes.Random.Password \\ Random password
```

### None
In Karnel you can use the ```None``` datatype.

```
enable Datatypes.None

include datatype: Karnel~Datatype~None
```



















































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































































# No Nazis
