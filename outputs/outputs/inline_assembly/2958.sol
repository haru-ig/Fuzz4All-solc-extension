pragma solidity ^0.8.0;
contract C {
    uint public x;
    mapping (uint => uint) mapping2;
    function getX() public view returns (uint) {
        return x;
    }
}
