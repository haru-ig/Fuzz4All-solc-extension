pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    uint256 public b;
    constructor (uint256 _a) public {
        a = b;
        b = a;
    }
    function getA()public view returns(uint256) {
        return a;
    }
    function getB()public view returns(uint256) {
        return b;
    }
}
