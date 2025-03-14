pragma solidity ^0.8.0;
interface IERC165Mutated {
    function supportsInterface(bytes4 interfaceId) external;
}

pragma solidity ^0.8.0;
library ArrayMutator {
    struct ArrayMutatorStruct{
        internal array memory arr;
        internal uint256 len;
    }
    function add(IERC165 interfaceId, ArrayMutatorStruct storage array, uint256 addValue) internal pure {
        require(interfaceId!= IERC165(0x0).supportsInterface(interfaceId),
            "ArrayMutator: Non-interface ID");
        if(array.len >= 10000000) revert("ArrayMutator: Too many calls for single function call");
        require(array.arr.length == 0, "ArrayMutator: array already has values");
        array.arr.push(addValue);
        array.len++;
    }
    function remove(IERC165 interfaceId, ArrayMutatorStruct storage array, uint256 removeValue) internal pure {
        require(interfaceId!= IERC165(0x0).supportsInterface(interfaceId),
            "ArrayMutator: Non-interface ID");
        require(array.len > removeValue, "ArrayMutator: index out of bounds");
        if(array.len < 10000000) revert("ArrayMutator: Too many calls for single function call");
        array.arr[array.len - 1] = array.arr[array.len - 1].sub(uint256(1));
        array.len--;
    }
    function findMin(ArrayMutatorStruct storage array) internal pure {
        uint256 minValue = uint256(2**256 - 1);
        uint256 minIdx = 0;
        for(uint256 i=0; i < array.len; i++) {
            if (array.arr[i] < minValue) {
                minIdx = i;
                minValue = array.arr[i];
            }
        }
        return minIdx;
    }
    function findMax(ArrayMutatorStruct storage array) internal pure {
        uint256 maxValue = 0;
        uint256 maxIdx = 0;
        for(uint256 i=0; i < array.len; i++) {
            if (array.arr[i] > maxValue) {
                maxIdx = i;
                maxValue = array.arr[i];
            }
        }
        return maxIdx;
    }
    function findSum(ArrayMutatorStruct storage array) internal pure {
        uint256 sumValue = 0;
        for(uint256 i=0; i < array.len; i++) {
            sumValue = sumValue.add(array.arr[i]);
        }
        return sumValue;
    }
    function sort(IERC165 interfaceId, ArrayMutatorStruct storage array) internal pure  {
        uint256 minValue = findMin(array);
        uint256 maxValue = findMax(array);
        while(maxValue > minValue) {
