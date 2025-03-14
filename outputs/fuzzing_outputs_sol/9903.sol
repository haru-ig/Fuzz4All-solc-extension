pragma solidity ^0.8.0;
contract Caller {
    uint a;
    constructor(uint _a) public {
        a = _a;
    }
    function old(uint _a) public pure returns(uint) {
        return 2*_a;
    }
    function call(uint _a) public payable {
       uint _ = old(a);
    }
}
