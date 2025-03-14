pragma solidity ^0.8.0;
contract C {
    mapping (uint => uint) public x;
    function setX(uint _x, uint _y) public {
        x[_x] = _y;
    }
    function getX(uint _x) public view returns (uint) {
        return x[_x];
    }
    function test() public returns (uint) {
        uint a = getX(x[x.length-1]);
        setX(x[x.length-1], a+1);
        return getX(x[x.length-1]);
    }
}
