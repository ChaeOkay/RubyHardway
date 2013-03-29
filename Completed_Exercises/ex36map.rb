#Excercise 36: Designing and Debugging

=begin 
Beginners Best Practices

If-Statements
1. Every if must have an else
2. if this else should never be run, then you must use 
a die function in the else, that prints out an error message and dies. 
3. never nest if statements more than 2 deep, try to keep them to 1. 
4. Treat if-statements like paragraphs where if, elsif, and else are like sentances. 
5. Boolean test shoudl be simple. if they are complex, make them variables. 

For Loops
1. Don't use while. 

Debugging
1. Do not use a debugger. It won't return specific info, and will be confusing.
2. The best way to debug is to use puts or p to print out values of variables
in points of the program to see where they go wrong.
3. make sure part of the program work as you write them. 
Don't write massive files of code before running them. 

Extra Credit 
use arrays, functions, and modules

GAME MAP

START =  welcome to the restaurant Tres Bon! Would you liked some sparkeling water, or still water? 
            sparkeling  
                (input) is an excellent choice! our entrees this evening are beof bourguingnon, coq au vin, and confit de canard. What will you be having?
                    beof bourguingnon
                        (input) is best served with a dessert. May I suggest the tarte tatin or the creme brulee?
                            tarte tatin 
                                END = Ah, excellent choice again. I hope you enjoy your (input). The Indian food here is delicious!
                            creme brulee
                                OOPS = I'm sorry, we are out of the (input) this evening.  
                                separate funciton(back to beof bourguinon)
                            else
                                GRR = Pah! I think you need a different waiter. (back to START)
                    coq au vin
                        GRR
                    confit de canard
                        The (input) is tres bien! Would you like to start with some hors d'oeuvres? Maybe the les escargots or cavier?
                            les escargot
                                How many of (input) will you be having?
                                    0-6  - "6 is typical, but we can provide you with (input)"
                                    7-12 - "12 is typical, be we can provide you with (input)"
                                    12+ - "(input) is ridiculous. (GRR)
                            cavier
                                END
                            else 
                                GRR
                    else
                        OOPS
                        perhaps you need a different waiter. GRR
            still
                OOPS



