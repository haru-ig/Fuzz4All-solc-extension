pragma solidity ^0.8.0;
contract SemanticEquivalence_DynamicallySizedArrayAssignment_232987cc753566c13d679d8ac98592b4
{
    uint8 dynamicArrayLength;
    function assignDynamicArrayElementAtIndex(uint8 i) public returns(uint8) returns (uint8)
    {
        bool arrayDeleted = dynamicArrayLength==0;
        dynamicArrayLength=dynamicArrayLength+1;
        if(dynamicArrayLength!=i)
        {
            if(arrayDeleted)
                throw "DynamicArrayAssignment_232987cc753566c13d679d8ac98592b4";
            else
            {
                assignDynamicArrayElementAtIndex(i);
                return;
            }
        }
    }
}
