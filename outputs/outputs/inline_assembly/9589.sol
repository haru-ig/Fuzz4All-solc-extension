pragma solidity ^0.8.0;
contract YulContract {
    function multiplyAndAdd4(uint256 a, uint256 b, uint256 c) internal pure returns (uint) {
        return (uint(a) * uint(b)) + (uint(a) + uint(b) + uint(c));
    }
}
```

## Using a Library

**Problem:**

For some data to be more useful, you need to add to it, but not remove it. When you want to use `add` for example, `add` requires the caller to have the ability to calculate the result up front. But you *don't want to add* `7` because *it's not relevant for addition, and it's impossible to verify that it's not the same value* when you *call add*.

Instead, you would like to use a library function, called add. The library function `add` takes two parameters `x` and `y`. A value `r` is returned, and you can then add 7 to the value directly, or use the `add` library to perform the required addition.

This is a common pattern, where the developer just doesn't know about the existence of the library function `add`, but uses a library function instead of directly calling it. The developer knows about both `add` and `add7`, and understands that these functions need only be called when performing an addition or subtraction, but they can't be called if it's used for something else.

**Solution:**

You can use libraries to provide functions and other capabilities in a smart contract. If you would like to create a library contract, check out the document on how to [Create a Library](https:

**Note:**

*For libraries, you can only access variables inside the library contract. If you want to access local variables or modify them, you must use the [inline assembly](inlineassembly.md) feature.*
