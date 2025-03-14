pragma solidity ^0.8.0;
contract L19 {
    uint public constant value = 0x54a4be94808d19af3389273cdace86214da773a6;
    uint public nextValue;
    function setNextValue(uint next) public payable {
        nextValue = next;
    }
    function getNextValue() public view returns(uint) {
        return nextValue;
    }
}

contract L20 is L19 {
    uint public constant value = 0x54a4b21c00622d44a97892992a2fd03f667091db;
    uint public nextValue;
    function setNextValue(uint next) public payable {
        nextValue = next;
    }
    function getNextValue() public view returns(uint) {
        return nextValue;
    }
}

*/
