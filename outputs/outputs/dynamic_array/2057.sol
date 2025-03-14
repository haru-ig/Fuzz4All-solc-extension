pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_2{
    modifier only(uint256 idx)  { if (idx == 0) throws; }
    function set(uint256[] memory arr, 0, uint256 val) virtual public returns(uint256) {
        (arr[0]=val);
        return val;
    }
}
