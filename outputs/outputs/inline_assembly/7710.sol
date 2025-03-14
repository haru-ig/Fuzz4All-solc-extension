pragma solidity ^0.8.0;
contract Hello {

    uint public constant value = 3;
    uint public x = 5;
    function setX(uint _x) public {
        x = _x;
    }
    function sub() public {
        x -= value;
    }
}
