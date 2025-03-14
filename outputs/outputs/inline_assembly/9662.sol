pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint constant c = 50;
     function subtract(uint x) internal pure returns (uint) {
      return 8 + x;
    }
    function power(uint x) private pure returns (uint) {
     return x * c * c* c* c* c;
    }
    function addBy(uint x) internal {
 uint temp = 122 + x;
    contractCounter += 50 + x;
   }
}


```

> **Notes** <br />
> 1. For clarity and consistency, if the return value of a function or method is not yet known, make sure to return it with a `payable` or call to a `payable` function like `require(msg.value > 0)` or `transfer(address payable _to, uint256 _value)` (See also the note about Solidity's `payable` keyword that is a special keyword in Solidity.)
> 2. Never trust an input given to a function or function call. You should think about what the function parameters and return values mean before proceeding. <br/><br/>
> 3. For clarity, you should not put a comment before each function or method. If you are not sure what to comment, you will need to look through the code to make sure the comment makes sense.
> 4. You could also write more descriptive commit messages that indicate what the function does, what it returns, what the logic does, and if anything else.
> 5. The function must return the original value of the message sent to it.
> 6. When using the `inline` keyword, put a comment before each `solidity` call to show the reason for the inline contract function's behavior. This is a good practice as long as you do not have a lot of `solidity` functions or methods, because you might miss some of the reasons why the function was added. Alternatively, you could specify a reason for the function's inline behavior by appending to a line. <br/><br/>
> 7. If a contract method or state variable changes frequently (that is, the function returns from a large number), consider using a state variable to cache the results of repeated computations. <br/><br/>
> 8. If the function is calling an external library, you should
