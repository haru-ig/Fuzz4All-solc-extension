pragma solidity ^0.8.0;
contract E7
{
    uint _x;
    function subtract (uint _x) public returns (uint256) {
        _x = _x ^  (~ (-3));
        return subtract_internal2_0();
    }
}
