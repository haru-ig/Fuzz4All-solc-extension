pragma solidity ^0.8.0;
address addrToMutate = 0x06E556B550cDBE62A120658774168632BCC260a4;

contract testCaller {
    uint internal staticArray[5];
    uint8[] internal dynamicArray;
    uint[] internal staticList;
    function doIt() public {
        uint256 length = 3;
        dynamicArray = new uint[](1);
        dynamicArray[0] = 1;
        dynamicArray[1] = 2;
        dynamicArray[2] = 3;
        staticArray[0] = 1;
        staticArray[1] = 2;
        staticArray[2] = 3;
        staticList[0] = 1;
        staticList[1] = 2;
        staticList[2] = 3;
        FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_5 memory temp = FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_5(true, [0,0,0,1,2,3], uint256[4] (staticList), uint256[4] (staticArray), uint256[3] [3](dynamicArray, [],[0,1,2]), FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_5(false, [],[1], [], uint256[], uint256[]), uint256[4] (staticList), [1, 2]);
        parentArray = mutator(length, temp);
    }
    function mutator(uint256 length, FunctionalEquivalence_MutatedNestedDynamicallySizedNestedArrayAssignment_5 memory e) private returns(uint256[]) {
        uint256[] memory res = new uint256[](length);
        for (uint i = 0; i < length; i++) {
            res[i] = e.get(e.parentArray, i);
