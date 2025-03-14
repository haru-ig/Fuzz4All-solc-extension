pragma solidity ^0.8.0;

contract MyNumber {
  uint _val;

  constructor(uint initVal) {...}

  function add(uint a, uint b, uint c) public pure returns(uint) {
    return a + b + c;
  }


  function foo() public view returns(uint) {
    return add(a, b, c);
  }
}
```
> You can see some details about the syntax below:
> - `contract` declares a contract within a contract
> - `library` declares a contract as a library within a contract
> - functions within a contract start with `function` keyword and define a function within a contract (must be static)
> - `struct` declares a variable that can only hold simple types (int, uint, string, etc) and cannot be changed
> - `enum` declares a variable that can hold a series of values (in this case an array of strings) and cannot be changed
> - `struct`, `struct` fields cannot be changed
> - `mapping` declares a variable that can hold either arbitrary (any type) or another mapping to arbitrary (any type) type fields. It is typically used for mapping data between two data structures.
>
> Note that we are declaring a contract `MyNumber`. While `MyNumber` in this context is an empty contract at this point, you can call any method within this contract. In each function, `uint a` is used, which is the type of the input parameters for this function, and `uint256 b` is the type for the returned value of the function.
>
> Let's assume we want to add `a` and `b` together and store the result in `_sum`. To do that, we first need to store their values as an array of two elements: `uint[] memory addArgs`.
>
> The `memory` keyword in Rust is a memory allocation keyword. This type of storage is called _memory_. We are creating a local variable for both `a` and `b`. Then, they are assigned to the local variable `addArgs`.
>
> Then, we can use the local memory variables in the function we created by using the `addArgs` array. The `addArgs` array itself is represented by the `memory` keyword. `addArgs` is the memory where the function is called `memory`, because the function has two parameters (the value used with `a`; and the value used with `b`).
>
> It is the function that we use to add the inputs:
> ```
> function add(uint a, uint b, uint c, uint[] memory addArgs) public pure returns(uint) {
>   return a + b + c;
> }
