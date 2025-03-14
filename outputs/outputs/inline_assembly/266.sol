pragma solidity ^0.8.0;
contract E8
{
    uint _x;
    function subtract (uint _x) public returns (uint256) {
        return subtract_internal1_0(subtract_internal2_0(_x), 8) ^ subtract_internal3_0();
    }
    function subtract_internal1_0 (uint _x, uint256 _y) internal pure returns (uint256) {
        return 7;
    }
    function subtract_internal2_0 (uint _x) internal view returns (uint256) {
        return 8;
    }
    function subtract_internal3_0 () internal pure returns (uint256) {
        return 9;
    }
}
