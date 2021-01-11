# Exercise 2

## Starting at the top learn how to do each thing in Jacascript:

1. Comments
    - adding comments: `//`
2. Variables
    - defining: `var variableName`
    - assignment: `variable = value`
    - modification: `variable = new_value`
3. Values
    - integers: `1, 2, 3, etc`
    - strings: `"string"`
    - dates: base value for dates is milliseconds `new Date()`
4. Arithemetic Operators
    - addition `+`
    - subtraction `-`
    - multiplication `*`
    - division `/`
    - quotient
    - modulus `%`
    - power `**`
5. Conditionals
    - equivalence `==`
    - greater than `>`
    - less than `<`
    - not equal to `!=`
    - AND `&&`
    - OR `||`
6. Condition Statements
    - if
    ```JavaScript
    if (condition) {
      // block of code
    }
    ```
    - elsif
    ```JavaScript
      if (condition1) {
        //  block of code to be executed if condition1 is true
      } else if (condition2) {
        //  block of code to be executed if the condition1 is false and condition2 is true
      }
    ```
    - else
    ``` JavaScript
      if (condition1) {
        //  block of code to be executed if condition1 is true
      } else if (condition2) {
        //  block of code to be executed if the condition1 is false and condition2 is true
      } else {
        //  block of code to be executed if the condition1 is false and condition2 is false
      }
    ```
    - unless: does not exist
7. Looping
    - while
    ``` JavaScript
      while (condition) {
        // code block to be executed
      }
    ```
    - do/while
    ```JavaScript
      do {
        // code block to be executed
      }
      while (condition);
    ```
8. Arrays
    - defining an array
    ```JavaScript
    var cars = ["Saab", "Volvo", "BMW"];
    ```
    - accesssing an element of an Array
    ```JavaScript
    var name = cars[0];
    ```
    - Changing an Array Element
    ```JavaScript
    cars[0] = "Opel";
    ```
    - adding to an Array
    ``` JavaScript
      var fruits = ["Banana", "Orange", "Apple", "Mango"];
      fruits.push("Kiwi");
    ```
    - iterating over an Array
    ``` JavaScript
      var cars = ["BMW", "Volvo", "Saab", "Ford"];
      var i = 0;
      var text = "";

      while (cars[i]) {
        text += cars[i] + "<br>";
        i++;
      }
    ```
    - deleting an element of an Array
    ```JavaScript
    delete fruits[0];
    ```
9. Hashes: 'objects'
    - defining an object
    ```JavaScript
    ```
    - accesssing an element of an object
    ```JavaScript
    ```
    - Changing an object Element
    ```JavaScript
    ```
    - adding to an object
    ``` JavaScript
    ```
    - iterating over an object
    ``` JavaScript
    ```
    - deleting an element of an object
    ```JavaScript
    ```
10. Methods
    - defining
    - calling
    - passing arguments
11. Objects
    - instance Methods
    - instance Variables
12. Classes
    - initialization
    - class Methods
    - class Variables
    - class instance Variables
