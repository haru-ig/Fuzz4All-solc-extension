pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_2{
    function set(uint256[] memory arr, uint256 from, uint256 to, uint256 val) internal returns(uint256) {
        uint256 t = arr[from];
        return set(from, t, to, new uint256[](0), val);
    }

    uint256 set(uint256 idx, uint256 from, uint256 to, uint256[] memory elems, uint256 val) internal returns(uint256) {
        return arr[to].val = val.sub(from).sub(elems[idx]).add(elems[idx+1].sub(to));
    }
}
