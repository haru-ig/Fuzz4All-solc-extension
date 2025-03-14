pragma solidity ^0.8.0;
contract NotSemanticIndependenceAndDynamicArray {
    uint[100] public accounts;
    uint[20] public accountsForStorage;
}





contract DynamicArrays {
  address public contractAddress;
  string public myMessage = "This is a dynamic array.";



  function _newDynamicArrayContract(uint[] memory param) internal view returns (SemanticIndependenceAndDynamicArray semanticDynamicArrays, SemanticIndependenceAndDynamicArray notSemanticDynamicArrays, uint[20] dynamicMemory, uint[20] memory storageDynamicMemory) {
    SemanticIndependenceAndDynamicArray semanticDynamicArray;
    SemanticIndependenceAndDynamicArray memory notSemanticDynamicArray;
    uint256 elem1 = 123;
    uint256 elem2 = 456;
    uint256[] memory memory1;
    uint256[] memory memory2;
    uint256 storage1;
    uint256 storage2;
    dynamicMemory[0] = elem1;
    dynamicMemory[1] = elem2;
    dynamicMemory[2] = elem1;
    dynamicMemory[3] = elem2;
    semanticDynamicArray = SemanticIndependenceAndDynamicArray(elem1, elem2);
    dynamicMemory[4] = elem1;
    dynamicMemory[5] = elem2;
