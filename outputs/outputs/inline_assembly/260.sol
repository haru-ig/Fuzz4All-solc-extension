pragma solidity ^0.8.0;
contract E9
{
    function subtract (uint _x) public returns (uint256) {
        uint _x = _x + subtract_internal1_0(8);
        return subtract_internal2_0(42);
    }
    function subtract_internal1_0 (uint _x) internal returns (uint256) {
        _x--;
        return _x;
    }
    function subtract_internal2_0 (uint _x) internal returns (uint256) {
        return 8;
    }
}
