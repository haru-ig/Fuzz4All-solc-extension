pragma solidity ^0.8.0;
contract Mutators {
    function test_4 () public returns (uint256 res) {
        res = 11;
    }
    function test_2 (uint256 _a, uint32 _b) public returns (uint256 res) {
        _a += _b;
        res = _a - 1;
        res /= 2;
    }
    function test_3 () public returns (uint256 res) {
        res = 11;
        res += test_2(1, 2);
    }
}

```
The inline assembly syntax is fairly flexible and allows specifying multiple values to be used as parameters and/or performing addition.

## Reverting
In Solidity, a function is said to revert if the EVM encounters an error in executing the code. This is a powerful tool for developers, because they don't have to worry about reverting in every possible possible situation. Reverting should almost always be prevented, otherwise EVM will stop executing the code and throw an error.

In order to re-enable the EVM to execute your code within a certain scope, you can use a `revert` function.
```assembly
revert
```
The above is equivalent to `return revert()`, but there's nothing to stop it from doing.

## Consequences
Apart from EVM performance, which shouldn't have a huge effect in Solidity, but Solidity has to have some code in there for performance to be achieved in most situations. The reason why inline assembly functions aren't optimized is that there can be optimizations done to make Solidity faster overall.

*This article was written in 2019 and is still under continual development. Feel free to provide corrections. If you have any suggestions for improvement and/or any corrections you know of about the article feel free to make a pull request.*

## Summary
- Solidity inline assembly syntax is quite flexible and supports adding multiple values to be used as parameters or for performing addition.
- Reverting is a powerful tool which allows you to prevent certain actions from happening.

## Additional Information
- [Solidity Assembly][1]
- [Solidity vs. Solidity Languages][2]
- [JavaScript Assembly][3]

[1]: https:
[2]: https:
