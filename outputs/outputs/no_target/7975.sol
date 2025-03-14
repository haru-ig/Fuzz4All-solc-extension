pragma solidity ^0.8.0;
contract Mutator5 {
    uint public i;
    mapping(address=>uint) public m;
    constructor (address _a) public {
    m[_a] = 0xfffffffffffffff;
    }
}
