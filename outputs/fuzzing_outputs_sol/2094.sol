pragma solidity ^0.8.0;
contract Mutater11 {
    constructor(address _address) {
        returnAddress11 = _address;
        returnAddress10 = _address;
        returnAddress12 = _address;
    }
    function getReturnAddress11() public view returns (address) {
        return returnAddress11;
    }
    function setReturnAddress11(address _address) public {
        returnAddress11 = _address;
    }
    function getReturnAddress10() public view returns (address) {
        return returnAddress10;
    }
    function setReturnAddress10(address _address) public {
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
