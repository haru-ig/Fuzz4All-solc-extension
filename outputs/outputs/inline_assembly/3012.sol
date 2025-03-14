pragma solidity ^0.8.0;
contract C is C{
    uint public x = 6;
    function setX(uint _x, uint _y) public {
        x = _x;
    }
    function getX(uint _x) public view returns (uint) {
        return x;
    }
    function test() public returns (uint) {
        uint a = getX(x);
        setX(x, a+1);
        return getX(x);
    }
}
