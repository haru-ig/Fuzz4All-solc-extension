pragma solidity ^0.8.0;
contract E10_2 {
    function subtract (uint _x) public returns (uint256) {
        _x = _x ^ - (uint(-3));
        return subtract_internal1_0(_x);
    }
    function subtract_internal1_0 (uint _x) internal returns (uint256) {
        uint256 c = 9;
        return c;
    }
}
contract E10
{
    uint _x;
    function subtract (uint _x) public returns (uint256) {
        _x = _x - (uint(-3));
        return subtract_internal1_0(uint(6));
    }
    function subtract_internal1_0 (uint _x) internal returns (uint256) {
        return (uint(9));
    }
}
contract E19
{
    uint _x;
    function subtract (uint _x) public returns (uint256) {
        _x = (_x - (uint(-3)));
        return subtract_internal_0(_x);
    }
    function subtract_internal_0 (uint _x) internal pure returns (uint) {
        return _x;
    }
}
contract E17
{
    uint _x;
    function subtract (uint _x) public returns (uint256) {
        _x = _x ^ uint(-3);
        return subtract_internal_0(uint(6));
    }
    function subtract_internal_0 (uint _x) internal returns (uint256) {
        return (uint(9));
    }
}
contract E26
{
    uint _x;
    function subtract (uint _x) public returns (uint256) {
        _x = 10 + uint256(-3);
        return subtract_internal_1_0();
    }
    function subtract_internal_1_0 () internal pure returns (uint256) {
        return 20;
    }
}
contract E20
{
    uint _x;
    function subtract (uint _x) public returns (uint256) {
        _x = _x ^  (-uint(-3));
        return subtract_internal_1_0(uint(6));
    }
    function subtract_internal_1_0 (uint _x) internal returns (uint256) {
        return (uint(9));
    }
}
