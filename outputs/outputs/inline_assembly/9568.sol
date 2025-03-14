pragma solidity ^0.8.0;
contract MyContract {
    uint X;
    uint a1;
    uint a2;
    bool b;
    modifier True {
        X = 11;
        a1 ^= a2;
        a2 += 39;
    }
    function bar() public {
        b = true;
        a1 ^= a2;
        a2 += 39;
    }
}
