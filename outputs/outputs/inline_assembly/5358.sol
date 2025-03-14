pragma solidity ^0.8.0;
contract QB {
    constructor (uint public rA) public {}
    function set1() public {
        rA = rA;
    }
    function set2() public {
        rA = rB;
    }
}
