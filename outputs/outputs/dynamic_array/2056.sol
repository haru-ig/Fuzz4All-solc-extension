pragma solidity ^0.8.0;
contract SolidityBug_DynamicallySizedArrayAssignment_1{
    uint256[] public a;
    function set(uint256[] memory t, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 _a = t[idx];
        t[idx] = val;
        return _a + val;
    }
}
