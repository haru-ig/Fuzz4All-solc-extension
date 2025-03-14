pragma solidity ^0.8.0;
contract Mutater12 {
    constructor(address _address) {
        returnAddress12 = _address;
        returnAddress11 = _address;
        returnAddress10 = _address;
    }
    function getReturnAddress12() public view returns (address) {
        return returnAddress12;
    }
    function setReturnAddress12(address _address) public {
        returnAddress12 = _address;
    }
    address public returnAddress11;
    address public returnAddress10;
    address public returnAddress12;
}
