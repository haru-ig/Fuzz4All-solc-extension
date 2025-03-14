pragma solidity ^0.8.0;
contract Caller12 {
    constructor() {

    }
    function f1(address _retAddr) public {
        returnAddress12 = _retAddr;
    }
    function f0() public {
        returnAddress11 = returnAddress12;
    }
}
