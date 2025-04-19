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

```
\\ Strings
enable Datatypes.Strings
include datatype: Karnel~Datatype~String
\\ Or use arrays of chars
\\ enable Datatypes.Arrays.Chars
\\ include datatype: Karnel~Datatype~Array~Char
```
