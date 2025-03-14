pragma solidity ^0.8.0;
contract MutateWithNum2{
    function createArrayTest(){
        uint arr1[3] = [4000, 4000, 4000];
        uint arr2[3];
        for(uint256 i = 0; i < 3; i++){
            arr2[i] = arr1[i] + 600;
        }

        for(uint i = 0; i < 3; i++){
            assert(arr1[i] == arr2[i]);
        }
    }
}
