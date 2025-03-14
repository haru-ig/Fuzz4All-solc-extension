pragma solidity ^0.8.0;
contract D{
    uint public names;
    uint public value;
    function() payable public {
        value = 235;
    }
    function getValue() public view returns (uint) {
        return 335u;
    }
    function setValue_2(uint name) public {
        name = name + names;
    }
}
