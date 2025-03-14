pragma solidity ^0.8.0;
contract smarter_abi3 {
    uint8 public public_variable;
    uint8 public public_value;
    function getPublicVariable() public returns(uint8) {return public_variable;}
    function setPublicVariable(uint8 new_value) public {public_variable = new_value;}
}
