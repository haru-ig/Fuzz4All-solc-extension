pragma solidity ^0.8.0;
contract Mutator3{
    uint public p0;
    uint public p2;
    bool public isMutated = false;
    constructor(uint initP){
        p0 = initP;
        p2 = initP + p0;
    }
    function init(uint initP) public{
        p0 = initP;
        p2 = initP + p0;
    }
    function update(uint initP) public{
        p0 = initP;
        p2 = initP + p0;
        isMutated = true;
    }
    function getResult() public view returns (bool isMutated){
        return isMutated;
    }
}
