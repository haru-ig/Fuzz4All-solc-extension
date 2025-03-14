pragma solidity ^0.8.0;
contract newStorage {
    function set() public {
        uint _x = 3;
        b = 5;
    }
    function get() public view returns (uint) {
        b = 5;
        return b;
    }
}
