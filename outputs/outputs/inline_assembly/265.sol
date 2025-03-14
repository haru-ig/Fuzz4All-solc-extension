pragma solidity ^0.8.0;
contract E7
{
    uint _x;
    uint constant _y = 7;
    uint _z;
    using SafeMath for uint256;
    function subtract (uint _x) public returns (uint256) {
        _x = _x.safeSub(8);
        return subtract_internal_0();
    }
    function subtract_internal_0() private returns (uint256) {
        return _y;
    }
}
