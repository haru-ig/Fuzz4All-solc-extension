pragma solidity ^0.8.0;
interface IToken is IToken {
    function test()external;
}
contract Token {
    function test()public{
        assert(0 == (IToken(0x0)).test());
    }
}
```
The compiler will return these specific compilation errors:
![Error](../img/invalid_opcode.png)
![Error](../img/arithmetic_overflow.png)
![Error](../img/arithmetic_underflow.png)
