#Excercise 28: Boolean Practice
#Excercise 27: Memorizing Logic (no script)

=begin
1. true and true
true

2. false and true
false

3. 1 == 1 and 2 == 1
false

4. "test" == "test"
true

5. 1 == 1 or 2 != 1
true

6. true and 1 == 1
true

7. false and 1 != 0
true

X8. true or 1 == 1
false
TRUE - I forgot that only "false or false" returns false. 

9. "test" == "testing"
false

10. 1 != 0 and 2 == 1
false

11. "test" != "testing"
true

12. "test" == 1
false

13. not (true and false)
true

14. not (1 == 1 and 0 != 1)
false

15. not (10 == 1 or 1000 == 1000)
false

16. not (1 != 10 or 3 == 4)
true
FALSE - wasn't being careful... 

17. not ("testing" == "testing" and "Zed" == "Cool Guy")
true

18. 1 == 1 and not ("testing" == 1 or 1 == 0)
true

19. "chuncky" == "bacon" and not (3 == 4 or 3 == 3)
false

20. 3 == 3 and not ("testing" == "testing" or "Ruby" == "Fun")
false


EXTRA CREDIT - equality operators
=== is basically the same as == but used within cases
.eql? = true if receiver and argument have the same type and equal values
equal? = true if receiver and agrument have the same object id.

&& = same as and
|| = same as or
! = not

?: = ternary looks like 
(argument) ? (if true do this here) : (if false do this here)
    *** i heart ternary conditions ***

=end
