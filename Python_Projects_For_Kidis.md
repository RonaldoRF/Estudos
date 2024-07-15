# 1. Bem-vindo! Vamos Começar

Se você pegou este livro, então está dando o primeiro passo em direção a construir projetos incríveis usando código. Alguns de vocês podem querer fazer jogos, enquanto outros podem querer aprender mais sobre como todos os seus sites e aplicativos favoritos realmente funcionam. Se você seguir os exercícios deste livro, será capaz de fazer o seguinte:

Criar jogos divertidos para jogar com sua família e amigos
Aprender sobre o funcionamento interno de seus aplicativos
Aprender como assumir o controle do seu computador

## Projetos em Python para você

Neste livro, você aprenderá a programar em Python. Especificamente, você aprenderá como projetar um programa de computador desde o início. Não importa se você nunca programou antes, pois cada exercício deste livro é projetado para prepará-lo para programar. Se você já programou antes, descobrirá que este livro tem alguns exercícios realmente úteis que podem ajudar a melhorar ainda mais o seu código. Além disso, há alguns projetos mais avançados no final do livro, que você definitivamente deve conferir!

## O que você pode fazer com Python?

Se você der uma olhada na Web e procurar por empregos em Python, verá que muitos dos empregos mais bem pagos são em Python. Por quê?
Python é uma linguagem muito flexível e poderosa das seguintes maneiras:
* Pode ser usada para percorrer milhões de linhas de dados
* Python pode buscar informações em um site sem precisar acessar o próprio site
* É até usada para hospedar e projetar sites

Então, o que será necessário para aprender Python? Se você nunca programou, provavelmente vai querer seguir cada lição na ordem para que possa desenvolver as habilidades necessárias para criar um jogo ou outro tipo de programa de computador. O projeto final deste livro será um jogo. Se você já tem alguma experiência em programação, como fazer modificações em seus jogos de computador, usar programas como Scratch ou Logo ou tentar algumas das aulas gratuitas de programação na Internet, pode decidir passar o olho neste livro primeiro para ver o que já sabe. Ainda assim, é recomendável que você siga o conteúdo deste livro na ordem em que são apresentados, pois cada projeto se baseia nos projetos explicados no capítulo anterior.

## Por que você deve aprender Python

Python ensina todos os conceitos básicos de uma linguagem de programação orientada a objetos e ainda assim é muito poderosa. Na verdade, muitas empresas da Internet, especialmente Mozilla Firefox e Google, usam Python em parte ou em todos os seus produtos! Python também foi usado para construir o Django, um framework gratuito para criação de sites.
Ele também tem sido usado para construir muitos pequenos videogames por pessoas que estão aprendendo sobre ele, bem como por programadores mais avançados. Finalmente, Python pode ser usado para ler e analisar milhões de linhas de dados muito rapidamente! Ao aprender Python, você estará preparado para construir uma variedade de projetos interessantes e adquirirá as habilidades necessárias para aprender outras linguagens de programação, se assim desejar.

:page_with_curl: Todos os exemplos de código deste livro estão disponíveis para download no site da Packt Publishing.

## Configurando seu computador

Existem muitos sistemas operacionais diferentes para computadores, mas os sistemas operacionais mais comuns são Macintosh (Mac), Windows e Linux. Você deve seguir os passos de instalação de acordo com o seu sistema operacional. Existem algumas diferenças sutis, mas importantes, entre os sistemas.

Para os projetos deste livro, usaremos Python 3.11. Embora existam versões mais altas, estas versões funcionam de forma confiável com pygame no Windows, Mac ou Ubuntu Linux. Este livro será escrito usando convenções que funcionam com as versões mais recentes do Python para que os projetos sejam facilmente completados em Raspberry Pi (que usa Python 3.x configurado especialmente com pygame) com apenas algumas modificações. Essas modificações serão devidamente anotadas.

## Para usuários de Mac e Ubuntu Linux

Os sistemas Mac e Linux compartilham semelhanças suficientes para que as pessoas que usam Mac ou Linux possam seguir o mesmo conjunto de instruções. Essas instruções farão observações sobre quaisquer diferenças entre Mac e Ubuntu Linux.

## Python 3.11

No momento da escrita, o macOS mais recente vem com Python 3.x pré-instalado, então nada extra precisa ser feito neste ponto.
O Ubuntu Linux mais recente também vem com Python 3.x instalado por padrão, então os usuários desta versão do Linux também não precisam fazer nada extra neste ponto.

### Terminal – a linha de comando e o shell do Python

Usuários de Mac e Ubuntu Linux têm Python por padrão, mas encontrar Python pode ser complicado se você não souber onde procurar. Existe um programa chamado Terminal nos sistemas operacionais Mac e Linux. Este programa permite que você exerça muito controle sobre seu computador das seguintes maneiras:
* No Mac, vá para Finder | Aplicativos | Utilitários e clique em Terminal. O aplicativo terminal será aberto e você deverá ver uma pequena janela branca na sua tela.
* Os usuários do Ubuntu podem procurar por terminal em suas áreas de trabalho, e o programa aparecerá no menu Iniciar. Quando você clicar no terminal, verá uma pequena janela preta na sua tela.
* O terminal também funciona como um shell do Python quando um comando é dado para executar o Python. Aprenderemos sobre isso mais tarde.

![image](https://github.com/user-attachments/assets/7235ca3e-0d00-4a4d-8593-fb395ab3fa32)

### Editor de texto

Um editor de texto é uma ferramenta útil para escrever e editar programas em Python. O terminal é um bom lugar para testar trechos de código Python, mas quando queremos editar e salvar o código para usá-lo novamente, precisaremos de um editor de texto. Embora os sistemas Mac e Linux venham com um editor de texto, existem alguns editores gratuitos muito bons que possuem ótimos recursos. O jEdit é um desses editores.

:page_with_curl: `> Para Mac e Linux, vá para http://www.jedit.org/ e baixe o jEdit. Siga as instruções de instalação.`

Para concluir com sucesso todos os exercícios deste livro, você frequentemente precisará manter o terminal e o editor de texto abertos ao mesmo tempo na sua tela.

Veja como o aplicativo de editor de texto, jEdit, se parece no Mac e no Linux:

![image](https://github.com/user-attachments/assets/5030c8e3-95bb-415b-a1fb-e0f4b44a8ac0)


## For Windows users
Windows users, this setup might require help from your parents. Since Python is
not installed by default on Windows, some system adjustments need to be made
to successfully run Python on your computer. If you are feeling uncertain about
performing these system changes yourself, make sure to ask for help:
1. First, you will need to download version 2.7.11 of Python.
Use the official Python website for the latest releases for Windows
at https://www.python.org/downloads/release/
python-2711/.
With Windows, you need to figure out if you are running 32-bit or
64-bit so that you can download the correct version of Python. To
help you to determine which one is correct, visit
http://windows.microsoft.com/en-gb/windows/32-bitand-
64-bit-windows#1TC=windows-7.
Download x86only if your computer is running 32-bit Windows.
Most users will download the x86-64 version of Python.
Welcome! Let's Get Started
[ 6 ]
2. Choose the executable installer, and you will see the download progress.
3. When the download is complete, you will see a prompt to run Python.
Click on Run.
4. An install prompt will come up, and when it does, look at the bottom of the
window and click on the box next to Add Python 2.x to Path. Then, select
Install Now.
5. Follow the installation instructions. Each step may take a few minutes. Once
the installation is done, you will have an icon for Python 2.7.11, which you
can find by searching for Python in the Windows search bar. This will open a
special Python shell from where you can run and test the Python code.
Command prompt
In Windows 10, you will see a terminal called the command prompt. The command
prompt is significantly different in Windows than it is on Mac or Linux.
To find the command prompt in Windows 10, perform these steps:
1. Go to the search bar at the bottom of the screen and search for cmd
or command.
2. When you do, you will see the command prompt desktop app appear.
Click on this app to open the command prompt, which looks like this:
Text editor
In Windows, Notepad is the default text editor. However, Notepad++ is a much
better substitute.
Chapter 1
[ 7 ]
To get Notepad++, perform these steps:
1. Go to https://notepad-plus-plus.org/and download the latest version.
2. Once the program has been downloaded, click on Run.
Notepad++ looks like this:
Write and run your first program in the
command line
Now that you are set up, it is time to write your first line of code in Python!
This line of code is almost a tradition for people who are programming for the
first time, and it allows us to use one of the most basic, but most useful, functions
in the Python language.
First, you need to start running a Python shell. On Mac or Linux, open your terminal
and type this:
python
In the Mac or Ubuntu terminal, your resulting Python shell will look like this:
>>>
In Windows, type Python in the search bar at the bottom of the page. Then,
select Python 2.7.11 from your apps. You will also have a Python shell open:
>>>
Once you see this symbol, your computer is now ready to work with the Python
code. In your terminal or IDLE, type the following:
>>>print("Hello, world!")
Welcome! Let's Get Started
[ 8 ]
Once you have typed this, double-check to make sure that all of the spaces are
exactly as they've been written. In Python, every space actually matters. Every
punctuation mark matters. Once you have checked your code, hit Enter.
What is your result or the output of your code? If the output looks like the
following image, then great! You typed all of your code properly so the computer
will understand what you want it to do. The expected output will be similar to what
is shown here:
For Windows users, the output window will look like this:
So, if your output does not look like the preceding code, you need to figure out
what's wrong with it. Here are some of the reasons for this:
• Did you make a typing error?
• Did you forget to use parenthesis or round brackets () for the words 'Hello,
world!'?
• Did you forget to use the ''single quotation marks for Hello, world!?
If you still have a problem, compare your code to the sample input code and fix any
mistakes. Then, try to run the code again.
Chapter 1
[ 9 ]
Python is what is called a case-sensitive language. Python cares about
uppercase, lowercase, and whitespace. You need to watch what you
type. You might get some strange messages from your computer if
you make a typing mistake or a syntax error.
Make yourself a work folder
Before we get started on any large projects, we need to make a work folder. In the next
chapter, you will start writing whole files of code that need to be run; therefore, we
will need a place to put those files. Since you are setting up now, let's make a folder.
If you are very good at getting around your computer, you can put your folder
wherever you want to.
If you are not too good at getting around your computer, you will probably want to
put your folder on your desktop.
On both Mac and Windows machines, you can right-click somewhere on your
desktop wallpaper, and a box will pop up with several options. One of the options
will say New, and when you hover over New, you will get several other options.
Choose New Folder, and a new folder icon will appear on your desktop. It will be
named untitled, so you should give it a better name.
To find your folder in the Mac or Linux terminals, respectively, open one of them
and perform these steps:
1. Run the cd .. command until you are at the root, which is often the name
you have given to your computer. You may need to run the command three
or four times.
2. Now, you will be able to run python programs by typing
python3.5program.py.
To find your folder in the Windows command line, open the command prompt
and perform these steps:
1. Run the cd ..command until you are at the root or C:\>. You may need to
run the command three or four times.
2. Now, you will be able to run Python programs by typing python program.
py.
Welcome! Let's Get Started
[ 10 ]
A quick task for you
Now that you have finished this chapter, can you answer these questions?
Q1. What is a terminal (Mac/Linux) or command prompt (Windows)?
1. A terminal is used to put data into or get data out of a computer without
using the icons on the desktop.
2. A terminal can be used to write computer programs.
3. A terminal can be used to do complex work, such as giving hints on
Python code.
4. A terminal can do all of the above.
Q2. When you first open the terminal/command prompt, what do you need to do so
that you can start reading and writing the Python code?
1. Start typing the code.
2. Type the word python.
3. Wait for Python to start.
4. None of the above; do something different.
Q3. How is the Python shell different from the command line?
1. They are exactly the same.
2. The command line cannot run Python commands.
3. The Python shell is started by typing the word python into the
command line.
4. The Python shell can be used to test lines of Python code.
Compare your answers with those you find at the back of the book.
Chapter 1
[ 11 ]
Summary
If you are reading this, it is because you have made it through some of the tricky
work of getting ready to learn to program projects with Python. Congratulations!
Setting it up is always tough. Hopefully, you learned a bit more about the tools on
your computer, such as the text editor and terminal that every programmer uses
to do their daily work. Also, you learned about the Python print() function, and
you should now be able to print out messages in your Python shell. The fun is just
beginning as we have so much more to learn!
In the next chapter, you will learn about the building blocks of Python programs.
We'll start with variables and learn about all the different kinds of information we
can put in them. Then, we will build some functions that put these variables together
and help us make blocks of code that have special jobs. Finally, we will even learn
how to make a computer ask a user questions and store their answers so that our
programs can become interactive!

# 2. Variables, Functions,
and Users
In the previous chapter, you learned how to install Python on your computer.
You also learned how to use the print statement in Python and printed some
messages using your Python shell. We are now going to jump into a lot of details
so that we can build our first project together. It will include the following:
• Variables
• Variable names
• Strings, integers, and floats
• Functions
Variables
A variable is when one letter or word is used to represent a different letter,
word, number, or value. One way to think of a variable is to imagine that you are
programming a computer so that it can make memories. For example, my name is
Jessica. If I am writing a computer program and I want that program to remember
my name, I will assign my name to a variable. This will look like name = 'Jessica'.
The variable is name. Jessica in the memory.
Perhaps I would like the computer to remember something else about me as well.
Maybe I want the computer program to remember that I am 64 inches, or roughly
128 cm, tall. I will say height_inches = 64 or height_centimeters = 128. The
variables here are height_inches and height_centimeters. The memories are my
height in inches and my height in centimeters.
Why don't you try giving a computer the name variable with your name and then a
height variable with your height?
Variables, Functions, and Users
[ 14 ]
First, open your Python shell and type the following code:
name = 'yourname'
height = 'your height'
Now that the variables are stored, you can type print(name) or print(height).
Since you created a memory for the computer with your name and your height, the
computer will print the memory that you gave it. If you take a look at the screenshot
from my Python shell, you will see that the computer printed the memories that I
assigned it. Notice that we do not use single quotes around the variable names:
If the values, or memories, that you assigned to the variables are printed in your
Python terminal, then it is perfect. If not, you may have an error. There are a lot of
reasons due to which an error can occur. You may have typed your variable name or
your information in a way that breaks the Python convention. Some common errors
include using capital letters.
Naming variables – conventions to follow
There are some conventions that are used to name variables in Python. It might seem
silly to have guidelines about naming things, but following the conventions is really
important because it helps other people read your code. Also, the Python shell is
designed to work with the conventions.
To avoid errors, your variable names should use lowercase letters. If your variable
uses more than one word, such as the height_inches variable, then it should have
underscores to connect the words together.
Chapter 2
[ 15 ]
If you use two words to name your variable and do not connect them with an
underscore, you will get an error. Take a look at the following screenshot and see
where it says SyntaxError: invalid syntax. Notice this error occurred because
the height centimeters variable did not have an underscore to connect the words:
What can variables remember?
Python variables can be programmed to remember all kinds of information! You will
notice in our original example that we stored a word and then a number. There are
three different kinds of information that we will be using to build our calculator in
Chapter 3, Calculate This!, strings, integers, and floats. Each bit of information is input
and output a little differently.
Strings
In Python, a string is any piece of data that's captured between two single quote
marks, that is, these symbols ' '. Sometimes, double quotation marks are used.
For example, I can have a string variable that looks like this:
sentence = 'This is a sentence about Python.'
This string variable contains letters and words. Most string variables do. However,
you can store a number as a string also as long as that number is in single quotes:
number_string = '40'
If we can store all kinds of information as strings, why do we need other data types?
Well, when we store numbers as strings, we cannot do math with the numbers! Type
this problem into your Python shell, and then you will see why we need data types
besides strings:
first_number = '10'
second_number = '20'
print(first_number + second_number)
Variables, Functions, and Users
[ 16 ]
What happened in your Python shell? You might have expected the printed output
to be 30 since 10 plus 20 is equal to 30. However, Python saw each number as a text
string and simply put the two text strings next to each other. So, your result was
probably 1020. Here is how this looks in the Python shell:
Integers
Computers are really great at math, and math will allow us to execute more
complicated programs, such as games. Python stores whole number data as integers.
Let's start with integers:
• An integer is simply a plain whole number. If we want to make our variables
store integers, we would take away the quotes.
• Then, when we add the two variables and print the output, we will get a
mathematical result.
Try it out! Let's do some math with these variables:
1. Type the following two variables in your Python shell:
first_number = 10
second_number = 20
2. Then, print the output by typing print and the variables:
print(first_number + second_number)
After completing step 2, press Enter. Your result should be 30. This is because
Python is reading the numbers as integers, and Python understands integers with
mathematical operators. In fact, Python understands math so well that you will
notice that no equals sign was needed to tell Python to output the answer. Take a
look at this screenshot:
Chapter 2
[ 17 ]
Floating point numbers (floats)
Hopefully, you now better understand how Python works with integers
(whole numbers). However, people and computers often need to work in
fractional numbers. In Python, these numbers are called floating point numbers,
but many people call them floats as a shortcut:
• Floats are actually a really fancy way of saying numbers using decimals
• Floats are called this because the decimal point can be anywhere among the
numbers, allowing for decimals of many different sizes
• Setting numbers as floats allows us to do more complicated math using
fractional numbers
• To set a variable to a float, you don't have to do anything special or different
from what you did to set the integers
• Python knows that a number input (a variable, for example) with a decimal
point is a float, and Python will output the answers as a float if the problem
is clear
In your Python shell, try this math problem using floating point numbers instead
of integers:
first_number = 10.3
second_number = 20.3
print(first_number + second_number)
Variables, Functions, and Users
[ 18 ]
This time, in your Python shell, you should notice that Python recognized the variable
input as floating point numbers and was able to output the complete and correct
answer without us having to use additional instructions. The output from your print
statement should be 30.6, as you can see in this screenshot of the Python shell:
Combining strings, integers, and floats
So far, we have only attempted to combine items that share a data type. We have
added two strings, two integers, or two floats. What happens when you try to add
two different types of information, such as a string and an integer? In your Python
shell, type the following lines of code and pay attention to the output:
first_number = '10'
second_number = 20
print(first_number + second_number)
You are likely to notice the error that you receive. The important line to pay attention
to is TypeError: cannot concatenate 'str' and 'int' objects. Python is
telling us that it cannot work with these two different data types and that makes
sense. So, if you do make a mistake in your typing or try to execute an operation in
two different data types, you may get an error like this:
Chapter 2
[ 19 ]
Functions
Once we have variables, we can use them to do some pretty interesting things. The
most interesting thing is to build functions. Python functions are blocks of code that
we can build to do a specific job. We build these functions once, and then we can
reuse them in our code just by typing the name. This is really helpful. For example,
if I need to write a program that adds two numbers (a calculator, for example), I do
not want to have to write three or four lines of code every time I want to add two
numbers. Instead, I want to write one function that can add two numbers together,
and then use that single line whenever I need to add numbers.
Before we begin building functions of our own, we need to also know that Python
has a lot of amazing functions that are built in. Some of Python's functions are things
we will use all the time. Others we won't talk about in this book, but as you become a
more skilled programmer, you will learn more about Python's built-in functions.
Built-in functions
Here's something about some built-in functions and what they do:
• int(): This converts a string or a float into an integer
• float(): This converts a string or an integer into a float
• raw_input(): This gets information from a user and stores it in the computer
to use later
• str(): This converts an integer, float, or other information into a string
• help(): This provides access to Python's help
Variables, Functions, and Users
[ 20 ]
We will be using these functions to help us build our first project in the next chapter.
If you are curious about what other functions are built in or if
you want to know more, you can go to the Python documents at
https://docs.python.org/2.7/library/functions.
html?highlight=built%20functions#.
Initially, the documents can seem overwhelming because they are very
detailed. The detail can make the documents difficult to understand
at times, but the documents are very helpful and are used by many
programmers.
Parts of a function
There are basic parts to think about when you want to build your own function.
First, here's the basic function to add two numbers:
def addition():
first_number = 30
second_number = 60
print(first_number + second_number)
The first line of this code is new, so we need to understand what it means:
• The first thing to notice is the word def. In Python, this is short for define,
and it is used to define a new function.
• The next thing to notice is the name of the function. The name of the function
has the same guidelines as the names of variables. A function needs to use
lowercase letters, and when it has many words, there need to be underscores
between each word.
• After the name of the addition() function, you will notice the parentheses
(). These are empty in this function, but sometimes they are not empty.
Even if they are, the parentheses must ALWAYS be a part of the function
that you create.
• Finally, the first line of the function ends with a colon. The colon (:), ends the
first line of the function.
A function can be short, such as this addition() function, which is only four lines in
total, or it can be really long. Every line after the first line in a Python function needs
to be indented using spaces. When we work on building our own functions in the
next section of this chapter, you will learn how to make indents in your Python shell.
We will also discuss proper spacing in the text editor.
Chapter 2
[ 21 ]
There are a lot of new details to remember in order to write a function. What
happens if you forget a detail? If you forget to indent a line, Python will let you
know and output an error. Your function will not run, and your code will not work.
Python's use of indentation is known as whitespace, and there are rules about
whitespace use in Python.
By now, you are very familiar with doing additions in Python, so we will keep
working with the addition code. There are special considerations in order to write
functions in the Python shell. Because a function is a block of code, we want to follow
these guidelines when we are trying to perform functions in the shell:
• After you type the first line and press Enter, make sure you press Tab before
you type each line
• When you have completed typing all the lines, hit Enter twice so that the
Python shell knows that you are done creating the function
In your Python shell, type the addition() function exactly as it appears here:
def addition():
first_number = 30
second_number = 60
print(first_number + second_number)
Notice how the function looks in the Python shell:
Now that you have typed your function, you need to learn how to use the function.
To use the function in the Python shell, type the name of the function and the
parentheses:
addition()
Variables, Functions, and Users
[ 22 ]
Typing the function is also known as calling the function. When you call the
addition() function in the Python shell and then press Enter, you will get an
output as the answer to the problem. Notice how this is displayed here:
Compare your result to the results shown in the preceding screenshots. Once you
know that your function runs the way you want it to, you can show it to your parents
and friends by asking them to look at your code. It is a good idea to test your function
by retyping it with different numbers.
Users interacting with your program
We just built a function that adds two numbers together. Learning to make a
program that does math is interesting, but our function is limited because our
addition() function needs to have variables changed manually to calculate results
for different numbers.
What if there was a way to get information from the user and store THAT information
in a variable so that it could be used by addition or subtraction functions each time?
Anyone who has used a calculator of any kind already knows that this is possible.
Python has a function called raw_input() that allows us to tell the program to ask the
user a question. The raw_input() function is incredibly useful. We can get every kind
of information from the user this way, and we can make interactions between the user
and the computer based on the user input.
We can use the Python shell to test how the raw_input() function works. Try typing
these two lines of code into your Python shell:
name = raw_input('What is your name?')
print(name)
Chapter 2
[ 23 ]
What happened here? Let's have a look:
• What should have happened is that you should have had a prompt in
the terminal that asked 'What is your name?' Then, you can type your
response.
• Following your response, hit Enter. Nothing will happen (nothing should
happen yet!).
• You have given the computer information (a memory) to store in the name
variable, but now you need to get the information out of the name variable.
• You can get the output of the memory that the user entered by printing the
name variable.
In this screenshot, you can see the entire sequence in the Python shell:
Using the text editor and the command
line
So far, we have used the Python shell to write and test code. The shell is great
because we type a line of code or even a few lines of code, and then we run them
immediately to see whether they work. However, you may have noticed that there
isn't a way to save any of the code that we write.
For a program to run, it needs to have all of the code available. Using a text editor is
just like writing a report, an email, or a paper: we write our code and save it; then,
we go back to edit it if we want to. In order to make Python use and understand our
file, we need to use the command line and tell Python to run the file.
To perform our next task as well as the remaining tasks in the book, we will use our
text editor side by side with our terminal/command prompt. Let's walk through the
setup of the text editor and command line right now.
Variables, Functions, and Users
[ 24 ]
The first thing you need to do is as follows:
• Make a special folder where you can store your code files, and remember
how to find this folder! (Look back at Chapter 1, Welcome! Let's Get Started,
for instructions.)
• This folder, or directory, is very important, as it will be the place where you
put the work that you create for the rest of this book
• Python needs to be able to access this directory to run all the programs,
and soon, we will write files that will use other files; so, all of the files need
to live in the same place
Once you are certain that you have a special work folder, you can open the text
editor program we set up in Chapter 1, Welcome! Let's Get Started. You will also
open a new window in a terminal or in the command prompt.
Build your own function – name()
So, you have learned about variables and how they store information. You have
also learned about how these variables can be used inside of a function. Finally,
you have learned how to use special Python functions, such as input(), to help get
information from users and store it in the computer. You are ready to build your
own function using variables and input().
Set up your project file
The function that we will build now is called name(). The purpose of this function
will be to ask the user their name, store (remember) the name, and then print out a
friendly message to the user.
To start this function, do the following:
1. Open a new file in your text editor.
2. Go to Save and name the file name.py.
You need to use .py at the end of all of your code files so
that the files run in the terminal/command prompt. Python
only recognizes .py files.
3. Save the file in the folder you made for all of your Python work.
Chapter 2
[ 25 ]
Begin your project
Once you have set up a project file, the first thing you might want to do is add a
short comment to your file. A comment allows humans to quickly understand what
is happening in the code. Whenever you are writing something that is not code,
you should start the line with a hashtag, or hash. The hash is one way to tell the
computer, Ignore this!, yet it allows humans to read the text. Type the following
line in your file:
# This is my first function called name. It will ask the name and
# print a message.
Writing code
The next line you type will begin the computer-readable code. First, make
sure that there is a space between the comment you wrote and the first line of
computer-readable code. As we learned earlier, you will start the function using the
Python word def. Then, you will type one space and the name of the function:
def name
Next, you will add parentheses () and a colon : to the first line:
def name():
Now, it is time to go to the next line. For the next line, you will need to indent.
Use the spacebar to insert four spaces. In Python, spaces matter. Using the Tab key,
or mixing between tab and space, is a problem in Python and causes errors.
Since we are asking the user for their first name, you can use the words first_name
for the variable if you like:
def name():
first_name =
The first_name variable will store the answer to the question, What is your first
name? Remember, though, we have to use the raw_input() function to get the user
to answer the question! So, we will add the raw_input() function and question to
the code:
def name():
first_name = input('What is your first name?')
So far, we have programmed a way for the computer to ask the user for their first
name, and we have made a variable called first_name to remember the string of
information.
Variables, Functions, and Users
[ 26 ]
Even though we have a file that has some lines of code, if we were to run our code
right now, nothing at all would happen. We need a way to show the user their name,
and it would be even nicer if we sent the user a welcoming message. We need to
write the code for program output.
We have been using print to output our information from Chapter 1, Welcome!
Let's Get Started, and throughout this chapter, and print is also useful here.
We can tell our function to print the first_name information, and we can put
that together with a nice message. Add this line to your code:
print('So nice to meet you, ' + first_name)
Your total code for the name() function should look like this:
def name():
first_name = input('What is your first name?')
print('So nice to meet you, ' + first_name)
Here is a sample of how the program looks in a text editor:
We need only to add the final line of code, which is to call the name() function. If
we do not call the function, it will not run. To call the function, you should leave an
empty line after print, and on a new line, unindent and type name(). Take a look at
this code sample, and add the name() function to your code:
def name():
first_name = input('What is your first name?')
print('So nice to meet you, ' + first_name)
name()
Now that we have created this function, we can use it to greet anybody because the
user is telling us each time what first_name should be. We have made a reusable
block of code.
Chapter 2
[ 27 ]
Running your program
Now you have to save your work:
1. Go to the Save option in your text editor and save the work for name.py.
2. Once you have saved this work, you should go to your terminal/command
prompt.
3. Make sure that you are in the correct folder.
If you are not sure, you can type pwd (Mac/Linux) or
echo %cd% (Windows) to find out what folder you are in.
4. When you are in the same folder as your work, type:
python name.py
5. Then, press Enter. Your program should begin to run.
Once you type in the name, the output should look like this:
You now have a program to share with family and friends that will seem amazing,
especially if they have never programmed before!
Going the extra mile
So, if you really want to understand all of this, go the extra mile! Experiment with the
code that you just created so that you can see what works and what does not work.
If you get a strange error, you can always copy and paste the error into an Internet
search engine; most of the errors we've taken a look at so far have happened to other
people. Here are some tips to help you experiment and gain mastery:
• Change the input question
• Change the message to the user
• Change the function name
Variables, Functions, and Users
[ 28 ]
• Change the variable name
• Add a second variable and a second input question
• Add the second variable to the output question
A quick task for you
Now that you have finished this chapter, can you answer these questions?
Q1. What must a function begin with?
1. def
2. Function
3. Input
4. Whitespace
Q2. What are conventions that are used to name variables and functions?
1. Must use lowercase letters
2. Multiple words need to be connected with underscores
3. Cannot use a number to start a name
4. All of the above
Q3. Every line after the first line of a function must be?
1. Named using numbers
2. Have a colon, :
3. Indented
4. Use parentheses ()
Q4. If you want a code file to run in Python, you need to end it with?
1. .txt
2. .odt
3. .pdf
4. .py
Chapter 2
[ 29 ]
Q5. To run a code file in the terminal, what do you need to do?
1. Type the name of the file in the terminal
2. Type the name of the file in the terminal while running Python
3. In the correct folder, type Python and the name of the file
4. All of the above steps in order
Summary
In this chapter, we learned how to store information in variables so that a computer
could remember it later. We learned how to use variables to make a function that
could add two preprogrammed numbers together. Then, things got interesting
when we learned how to make the computer ask questions and remember the user's
answers! Using raw_input(), we learned how to store answers as variables to use
later in the name() function that we built together. We started saving our work in
.py files so that we could run and rerun our files in our terminal/command prompt
without having to retype the files all the time.
In the next chapter, you will build a four-function calculator to run in the command
line using all of the skills you learned in this chapter!
