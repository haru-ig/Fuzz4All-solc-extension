pragma solidity ^0.8.0;
contract E7
{
    function subtract (uint _x) public returns (uint256) {
        return subtract_internal1(_x);
    }

    function subtract_internal1 (uint _x) internal returns (uint256) {
        return subtract_internal2(_x);
    }

    function subtract_internal2 (uint _x) internal returns (uint256) {
        return 8;
    }
}
