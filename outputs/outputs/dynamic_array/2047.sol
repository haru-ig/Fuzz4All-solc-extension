pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_6{
    function set(uint256[] memory arr, uint256 idx, uint256 val) internal returns(uint256) {
        uint256 t = arr[idx];
        uint256 x = arr[t];
        uint256 m = block.timestamp+(uint256(block.difficulty)+uint256(block.number))*last+10*(uint8((uint256(block.number)+byte(255+1))%256));
        arr[t] = val;
        arr[x] = val;
        arr[block.timestamp+(uint256(block.difficulty)+uint256(block.number))*last] = bytes(0).length+bytes(0).length-1;
        arr[block.difficulty+(uint256(block.number)+uint256(block.difficulty*last))] = uint1(m)-bytes(0).length-1;
        return idx+2;
    }
}
