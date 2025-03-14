pragma solidity ^0.8.0;
contract Mutated {
    uint256 constant INITIAL_X = 42;
    uint256 private x = INITIAL_X;



    address private newAddress = 0x1234567890123456789012345678901234567890123456789012345678901234567890b;


    string private name = "Test";

    function Mutated.setAddress(address _newAddress) public {
        newAddress = _newAddress;
    }

    function Mutated.setName(string calldata _name) public {
        name = name + " - " + _name;
    }
}
