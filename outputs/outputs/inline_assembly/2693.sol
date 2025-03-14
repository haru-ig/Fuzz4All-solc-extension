pragma solidity ^0.8.0;
contract D {
    uint public x = 0x1234;
    function setValue(uint x) public {
        assembly {
            x := x + 7
        }
    }
    function getValue() public view returns (uint) {
        return x;
    }
}
