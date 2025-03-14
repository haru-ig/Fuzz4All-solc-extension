pragma solidity ^0.8.0;
contract ContractStorage {

    address public admin;

    bool private activated;

    address[] public arrays;
    constructor() { admin = payable(msg.sender); }

    event SomeEvent(uint x, uint y);
    function arrayLength() public view returns (uint) {
        return arrays.length;
    }
    function setActivated(bool newActivated) public {
        activated = newActivated;
    }



    function _name() internal view returns (string memory) {
        return "Storage";
    }
    function _admin() internal view returns (address payable) {
        return admin;
    }
}
