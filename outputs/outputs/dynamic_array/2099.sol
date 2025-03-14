pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_10 {
    uint256 public constant _idx = 1;
    FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_6 myInstance;
    function setVal() internal returns(uint256) {
        return myInstance.set(array, _idx, val);
    }
    function getVal() internal returns(uint256) {
        return myInstance.get();
    }
    function reset() internal returns(uint256) {
        myInstance.reset();
    }
    constructor() public {
        myInstance = new FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_6();
    }
   uint256[] public array;
   uint256[] public mutatedArray;
   uint256 public val;
    constructor() public {
        myInstance = new FunctionalEquivalence_MutatedDynamicallySizedArrayAssignment_6();
        array[val] = val;
        array[_idx-1] = val;
        array[_idx] = val;
        val = 0;
        array[val] = val;
        mutatedArray[val] = 0;
    }
}


pragma solidity ^0.8.0;
contract FunctionalEquivalence_AllocatedArrayAssignment {
    address addr;
    uint256[] public _arr;
    uint256 public _id;
    constructor(uint256[] memory n_arr) public {
        _arr = n_arr;
        _id = 0;
    }
    function get() internal readonly returns(uint256[] memory) {
        return _arr;
    }
    function put(uint256 n) internal {
        _arr[_id] = n;
        _id++;
    }
    function getAndReset() internal returns(uint
