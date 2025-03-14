pragma solidity ^0.8.0;
contract newStorage {
    uint b;
    constructor() {
        b = 15;
    }


    function set(uint _value) public {
        b = _value;
    }

    function get() public view returns (uint) {
        return b;
    }
}
