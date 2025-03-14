pragma solidity ^0.8.0;
contract K {
    uint public _x;
    function m() public {
        m(_x);
    }
    function m1(uint _x) public {
        m(_x);
    }
}
contract R {
    function g() public pure {
    }
}
