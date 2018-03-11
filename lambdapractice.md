Here's what is happening:

I defined a class that creates an object (representing a student) with 3 demographic (representing that student's name, age and experience level).

Next, I created 5 students (each an array), and placed all students in an array-of-arrays called "students".

Now, I would like to sort the "students" array by name. So I ran "puts students.sort.inspect", but got an error because the program doesnt know which demographic to sort by.

So I defined a "sort_students" method. This method takes 1 argument (an array), compares the elements (referenced by "x" and "y") two-by-two according to a demographic, then lists the lesser element in each comparison first - thus sorting the elements. In my method, I am sorting alphabetically by "name". This time I ran "puts sort_students(students).inspect" and the sort worked.

But what about being able to pass an argument for the demographic to sort by, rather than hardcoding it in the "sort_students" method? Well, I can create lambda variables for each sortable demographic.

To sort by age, I define a lambda variable called "by_age" and set it equal to the age of the student. Next, I modify my "sort_students" method to:
(1) accept 2 arguments - the array and the lambda variable that represents the sort-by demographic.
(2) call the lambda variable (referenced by "comparator") on the two elements being compared ("x" and "y")

Similarly, I defined lambda variables to sort by name ("by_name") and experience level ("by_level").

Finally, to sort by age, I ran "puts sort_students(students, by_age).inspect", and the sort displayed successfully.

To tighten up the code a bit, I don't need the lambda variables by_age, by_name or by_level. I can just pass the lambda statement in as an argument (i.e. puts sort_students(students, lambda { |person| person.age }).inspect).