pragma solidity ^0.8.0;
contract Test52Mutant2 {
    uint[4] m;
    function f() public {
        uint _m;
        _m = m[0]+3;
        m[0] = 456;
        m[1] = 567;
        m[2] = 678;
        m[3] = 789;
    }
}
