pragma solidity ^0.8.0;
contract BetterCase9 {
    struct A {
        uint a;
        uint b;
        uint[5] d;
    }
    function modifies(A memory a, uint x) public {
        a.a -= x;
    }
}
```

`BetterCase*` versions of the above program should be semantically equivalent.
