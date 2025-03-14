pragma solidity ^0.8.0;
contract FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_5{
    uint256[] internal parentArray;
    uint256[][2] internal nestedArray;
    uint8[2] internal myStruct;
    uint256 internal counter;
    constructor() public {
    }
    function get2(uint256 k) internal view returns(uint256) {
        uint256 t = nestedArray[myStruct[0]][k];

        return t;
    }
    function set2(uint256 k, uint256 val) internal returns(uint256) {
        uint256 t = nestedArray[myStruct[0]][k];

        nestedArray[myStruct[0]][k] = val;
        return t;
    }
}
