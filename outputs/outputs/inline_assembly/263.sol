pragma solidity ^0.8.0;
contract E9
{
    event eve(uint256 _x);
    function subtract (uint _x) public returns (uint256) {
        (uint256 a, uint256 b) = subtract_internal1_0(5,4,3);
        emit eve(a);
        eve(b);
        add_internal1_0(5,4,3);
        return subtract_internal2_0(_x);
    }
    function add_internal1_0 (uint _x,uint256 _y,uint256 _z) internal returns (uint256) {
        _x += _y;
        _y++;
        _z--;
        _x += _z;
        _y--;
        _z--;
        return (0);
    }
    function subtract_internal1_0 (uint _x,uint256 _y,uint256 _z) internal returns (uint256 a, uint256 b) {
        a = subtract_internal2_0(_x);
        (a,b) = add_internal1_0(_x, _y, _z);
        return (a);
    }
    function subtract_internal2_0 (uint _x) internal returns (uint256) {
        (uint256 a, uint256 b) = add_internal1_0((8), (2), (9));
        (a,b) = (a, b);
        return (0);
    }
}
