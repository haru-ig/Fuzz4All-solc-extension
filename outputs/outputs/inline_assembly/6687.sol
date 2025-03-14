pragma solidity ^0.8.0;
contract MixedContactsExample501 {
    using Counter with Counter.Counter;
    Counter.Counter public i;
    function doSomething() public {
        i.increment();
        i.increment();
        i.increment();
        uint256 t;
        t = i.current();
        i.increment();
        i.increment();
        i.increment();
    }
}

pragma solidity ^0.8.0;
contract MixedContactsExample502 {
    using Counter with Counter.Counter;
    uint256 i;
    function doSomething() public {
        i = 4;
        i = i * 2;
        uint256 t;
        i = i + 1;
        i = i * 4;
        i = i / 2;
        t = 3 - i;
        i = 2 + 3;
    }
}


```

[Source Code](https:


> In this chapter, we will introduce the concept of inline assembly and learn how to create a program that demonstrates its use.

---
