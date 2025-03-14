pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_22{
	address internal contractOwner;
    SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_21 internal arrayMappingOne;
    SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_21 internal arrayMappingTwo;

}



pragma solidity ^0.8.0;
contract EquivalenceArrayAssignment_NestedDynamicallySizedNestedCalldataArrayAbi_23{

    struct CalldataArrays{
        uint[] nestedArray;
        uint nestedSize;
    }

    struct CalldataArray{
        CalldataArrays nestedArrays;
        uint size;
    }

    struct CalldataArraysMapping{
        CalldataArray[] nestedArrays;
    }

    SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_21 internal dataMapping;

    public function test_assignArray_nestedDynamicallySizedCalldataArrayAbiSize(){

        uint maxSize = 10000;
        CalldataArray[] memory data = new CalldataArray[](maxSize);
        (uint i, uint j) = (0,0);
        for(i; i <= maxSize; i++){
            CalldataArray memory newCalldataArray = new CalldataArray();
            newCalldataArray.nestedArrays.nestedArray[j] = i;
            newCalldataArray.nestedArrays.nestedSize = 1;
            data[i] = newCalldataArray;
            j++;
            if(j == maxSize) j = 0;
        }
        dataMapping.assignArray(data);
    }

    function assignArray(CalldataArray[] memory data) external{
        uint[] memory resultCalldataArray = dataMapping.readArray();

        for(uint i; i <= data.length; i++){
            if(data[i].nestedArrays.nestedSize == 1){
                if(resultCalldataArray[i]!= data[i].nestedArrays.nestedArray[0]){
                    return;
                }
            }
        }
      }

    function readArray() public view returns(uint[] memory){
        uint[] memory tempArr = dataMapping.readArrayInner();

        CalldataArrays memory calldataArray = CalldataArrays();
        uint[4] memory data;
        data[0] = 1;
        data[1] = 2;
        data[2] = 3;
        data[3] = 4;
        calldataArray
