pragma solidity ^0.8.0;
contract C {
    uint public constant max = 9223372036854775807;
    bytes32 public constant x = '0x44';
    function setX(uint _x) public returns (uint) {
        (uint a, uint b) = getXY();
        setX(a);
        return getX();
    }
    function getXY() public view returns (uint, uint) {
        uint c = uint(x);
        (uint d, uint e) = getX();
        return (c, d);
    }
}
