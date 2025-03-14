pragma solidity ^0.8.0;
contract E8
{
    uint _x = 5;
    function subtract (uint _x) public returns (uint256) {
        _x = _x |  (- (-3));
        return subtract_internal1_0(uint256(6));
    }
    function subtract_internal1_0 (uint _x) internal view returns (uint256) {
        return +(_x);
    }
}
