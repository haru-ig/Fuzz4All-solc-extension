pragma solidity ^0.8.0;
contract C {
    bytes32 x = '0x44';
    address y;
    uint public k;
    uint public l;
    function setX(uint _x) public returns (uint) {
        x = '0x123456';
        return getX();
    }
    function getX() public view returns (uint) {
        uint n = uint(x);
        return n;
    }
}
