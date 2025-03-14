pragma solidity ^0.8.0;
contract MyContract {
    bool b3;
    uint X;
    uint a1;
    uint a2;
    bytes32 constant public c1 = "foo";
    event ChangeToFalse(uint x);
    modifier True {
        b3 = true;
        a1 = a2;
        _;
    }
    function bar() public {

        a1 ^= a2;
        a2 += 39;
    }
}
```
