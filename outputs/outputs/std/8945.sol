pragma solidity ^0.8.0;
contract ExampleStruct11 {
    uint256 x;
    constructor(uint256 x_){
        x = x_;
    }
    function getLength() public view returns (uint256){
        return x;
    }
    function setLength(ExampleStruct11 s) public {
        x = s.getLength();
    }
}
