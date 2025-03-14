pragma solidity ^0.8.0;
contract E6 is E7
{
    function subtract_internal(uint _x) public returns (uint256) {
        return subtract(_x);
    }
    function subtract_internal_1(uint _x) internal returns (uint256) {
        return add (_x);
    }
}
contract E5
{
    function subtract(uint _x) public returns (uint256) {
        return subtract_internal(_x);
    }
    function subtract_internal(uint _x) internal returns (uint256) {
        return subtract_internal2(_x);
    }
    function subtract_internal2(uint _x) internal returns (uint256) {
        return add (_x);
    }
}
contract E4
{
    function subtract_internal(uint _x) public returns (uint256) {
        return subtract_internal1(_x);
    }
    function subtract_internal1(uint _x) internal returns (uint256) {
        return subtract_internal2(_x);
    }
    function subtract_internal2(uint _x) internal returns (uint256) {
        return add (_x);
    }
}
