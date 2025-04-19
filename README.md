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

### Booleans
To use booleans include this in your program.
```
enable Datatypes.Booleans
include datatype: Karnel~Datatype~Boolean
```

#### Normal booleans
In Karnel a boolean can have one of 69 states.
```
enable Datatypes.Booleans.True              \\ 1: Definitely True
enable Datatypes.Booleans.False             \\ 2: Definitely False
enable Datatypes.Booleans.Maybe             \\ 3: Maybe (Schrödinger's answer)
enable Datatypes.Booleans.Probably          \\ 4: Likely, but no promises
enable Datatypes.Booleans.ProbablyNot       \\ 5: Doubtful
enable Datatypes.Booleans.Unknown           \\ 6: Nobody knows
enable Datatypes.Booleans.Undefined         \\ 7: Karnel refuses to evaluate
enable Datatypes.Booleans.Indeterminate     \\ 8: Both true and false
enable Datatypes.Booleans.Always            \\ 9: Always true (even when it's not)
enable Datatypes.Booleans.Never             \\ 10: Not even once
enable Datatypes.Booleans.Sometimes         \\ 11: Mood dependent
enable Datatypes.Booleans.Typically         \\ 12: Normal circumstances
enable Datatypes.Booleans.Exceptionally     \\ 13: Only on Tuesdays
enable Datatypes.Booleans.TrueToYou         \\ 14: Personal truth
enable Datatypes.Booleans.FalseToMe         \\ 15: Emotional denial
enable Datatypes.Booleans.Mirage            \\ 16: Looks true until you zoom in
enable Datatypes.Booleans.Ironic            \\ 17: Opposite of what you expect
enable Datatypes.Booleans.Paradoxical       \\ 18: Causes logical collapse
enable Datatypes.Booleans.Axiomatically     \\ 19: Just trust it
enable Datatypes.Booleans.Proven            \\ 20: Backed by three peer-reviewed papers
enable Datatypes.Booleans.Disproven         \\ 21: We don't talk about this one
enable Datatypes.Booleans.Ignored           \\ 22: Value is there but no one checks
enable Datatypes.Booleans.Overlooked        \\ 23: Hidden in plain sight
enable Datatypes.Booleans.Dreamed           \\ 24: Might be a hallucination
enable Datatypes.Booleans.Forgotten         \\ 25: It was something… I swear
enable Datatypes.Booleans.Assumed           \\ 26: You thought it was true
enable Datatypes.Booleans.Believed          \\ 27: Faith-based logic
enable Datatypes.Booleans.Denied            \\ 28: Even if it's true
enable Datatypes.Booleans.Accepted          \\ 29: Collective illusion
enable Datatypes.Booleans.Contextual        \\ 30: Depends on the mood
enable Datatypes.Booleans.Historical        \\ 31: Used to be true in 1986
enable Datatypes.Booleans.FutureTruth       \\ 32: Will be true eventually
enable Datatypes.Booleans.Sarcastic         \\ 33: "Totally true" (it's not)
enable Datatypes.Booleans.Potentially       \\ 34: Could become true
enable Datatypes.Booleans.Corrupted         \\ 35: Bit flipped somewhere
enable Datatypes.Booleans.Redacted          \\ 36: █████████
enable Datatypes.Booleans.Classified        \\ 37: Need clearance
enable Datatypes.Booleans.Quantum           \\ 38: True *and* false
enable Datatypes.Booleans.Glitched          \\ 39: Just blinked to false
enable Datatypes.Booleans.Divine            \\ 40: Only the gods know
enable Datatypes.Booleans.Simulated         \\ 41: True in a dream
enable Datatypes.Booleans.Faked             \\ 42: Pretends to be true
enable Datatypes.Booleans.Mocked            \\ 43: Look at this fake
enable Datatypes.Booleans.Patchy            \\ 44: Truth depends on version
enable Datatypes.Booleans.Legacy            \\ 45: Obsolete logic
enable Datatypes.Booleans.Transcendent      \\ 46: Beyond boolean
enable Datatypes.Booleans.Cynical           \\ 47: Trust no one
enable Datatypes.Booleans.Whimsical         \\ 48: Logic is a game
enable Datatypes.Booleans.Experimental      \\ 49: May crash reality
enable Datatypes.Booleans.Memeified         \\ 50: Logic by meme
enable Datatypes.Booleans.FanTheory         \\ 51: Headcanon level
enable Datatypes.Booleans.UnoReverse        \\ 52: Flips when used
enable Datatypes.Booleans.PossiblyNot       \\ 53: Genuinely unsure
enable Datatypes.Booleans.Cosmic            \\ 54: Intergalactic truth
enable Datatypes.Booleans.Generational      \\ 55: Only true for Gen Z
enable Datatypes.Booleans.Political         \\ 56: Debatable forever
enable Datatypes.Booleans.SociallyAccepted  \\ 57: We all nod politely
enable Datatypes.Booleans.Temporary         \\ 58: True for now
enable Datatypes.Booleans.BugDependent      \\ 59: Working as intended
enable Datatypes.Booleans.NotYetLoaded      \\ 60: Check again later
enable Datatypes.Booleans.Stable            \\ 61: Mostly consistent
enable Datatypes.Booleans.Unstable          \\ 62: Jumps at random
enable Datatypes.Booleans.PseudoTrue        \\ 63: Fake but useful
enable Datatypes.Booleans.Animated          \\ 64: Looks alive
enable Datatypes.Booleans.Recursive         \\ 65: See state 65
enable Datatypes.Booleans.Unknowable        \\ 66: Beyond comprehension
enable Datatypes.Booleans.Nullified         \\ 67: Deleted from logic
enable Datatypes.Booleans.Divided           \\ 68: Even Karnel can't decide
enable Datatypes.Booleans.Transitional      \\ 69: Between two truths
```

#### Double booleans
Double booleans can have two states at once.

#### Quadrouple booleans
Quadrouple booleans can have four states at once.

