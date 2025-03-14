pragma solidity ^0.8.0;
contract SemanticEquality_DynamicArrays_74cd94bdab67615006ccfe644c928286c9d3ef6e
{
    uint32 f_32;
}
contract SemanticEquality_DynamicArrays_1799e3b952893e582996b71cd2c2807587846f9e
{
    uint32[3] memory arrayOf32;
    uint _nonNullStorageValue;
    function get() public view returns (uint) {
        uint8 i = 0;
        while(true) {
            getTwo();
            i++;
            if(i > 100) break;
        }
        return 0x0;
    }
    function getTwo() public view returns (uint) {


        uint32 nonNullElementFromStorage = getNonNullValueFromStorage();

        while(true) {
            uint32 memoryElementFromMemory = arrayOf32[nonNullElementFromStorage];
            nonNullElementFromStorage++;
            if(memoryElementFromMemory == 0) break;
            return memoryElementFromMemory;
        }
        return 0x0;
    }
    function getNonNullValueFromStorage() public view returns (uint) {
        if(_nonNullStorageValue == 0) return 0x0;
        else return _nonNullStorageValue;
    }
}
contract SemanticEquality_DynamicArrays_109d4b1731776a229d2b6980309a74187f943d3c
{
    uint[] memory arrayOf3
