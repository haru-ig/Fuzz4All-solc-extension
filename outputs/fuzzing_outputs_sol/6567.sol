pragma solidity ^0.8.0;
contract SimpleStorage {
    uint constant private val = 36;
    function set(uint _x) public view {
        require(_x == val);
    }
}
