pragma solidity ^0.8.0;
contract MyContract {
    bool b3;
    uint X;
    uint a1;
    uint a2;
    event ChangeToFalse(uint x);
    constructor () { }
    modifier True {
        a1++;
        a1 += 7;
        b3 = false;
        Y.push(b3);
        a1 += 4;
        a1--;
        a2 = 45;
        b3 = true;
        a1--;
        a1 = 5;
        _;
    }
    function bar() public {
        b3 = true;
        a1++;
        a1 += 9;
        uint z = 16;
        X = z;
        a1 -= 13;
        a1 &= 1;
        a1 = 15;
        _;
    }
}
