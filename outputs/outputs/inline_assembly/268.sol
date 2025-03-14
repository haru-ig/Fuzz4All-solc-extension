pragma solidity ^0.8.0;
contract E7
{
    uint _x;
    function subtract (uint _x) public returns (uint256) {
        _x = _x ^  (~ (-3));
        return subtract_internal1_0(uint256(6));
    }
    function subtract_internal1_0 (uint _x) internal returns (uint256) {
        return 9;
    }
    function subtract_internal2_0 () internal view returns (uint256) {
        return 8;
    }
}
