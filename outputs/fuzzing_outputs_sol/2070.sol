pragma solidity ^0.8.0;
contract Mutater4 {
    function setCaller(address _address) public {
        caller = _address;
    }
    function getCaller() public view returns (address) {
        return caller;
    }
    address caller;

    constructor(address _address) {
        setCaller(_address);
    }
}
