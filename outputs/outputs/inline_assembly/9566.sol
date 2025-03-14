pragma solidity ^0.8.0;
contract MyContract {
    mapping (uint => uint) mapping (uint => uint);
    bool b3;
    uint X;
    uint a1;
    uint a2;
    event ChangeToFalse(uint x);
    modifier True {
        b3 = true;
        a1 = a2;
        _;
    }
    function bar() public {
        X = 11;
        a1 ^= a2;
        a2 += 39;
    }
}
