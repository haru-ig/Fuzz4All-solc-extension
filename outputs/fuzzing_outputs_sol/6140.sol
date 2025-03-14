pragma solidity ^0.8.0;
contract B is B {
    uint a;
    constructor() public {
        a = block.timestamp;
    }
    function setA(uint _a) public {
        a = _a;
    }
    function getA() public view returns (uint) {
        return a;
    }
}
contract Test is B {
    uint a;
    uint constant timestamp = block.timestamp;
    constructor() public {
        a = timestamp;
        require(a <= block.number, "Time not too far in the future");
    }
    function setA(uint _a) public {
        a = _a;
    }
    function getA() public view returns (uint) {
        return a;
    }
}
