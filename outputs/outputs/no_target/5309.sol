pragma solidity ^0.8.0;
contract MutatedExamples9 {
    constructor() public {}
    function mutated(uint x) public {
        require(x!= 0);
        uint y = x;
    }
    function get() public view returns(uint){
        return  x;
    }
}
