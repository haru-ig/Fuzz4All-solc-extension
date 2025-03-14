pragma solidity ^0.8.0;
contract MutateWithNum2 {
    function assignArray() public {
        uint[] memory arr = [0, 10, 12, 16, 2, 3, 4];
        for(uint i = 0; i < arr.length; i++) {
            if (!arr[i] % 2) {
                arr[i] = arr[i] + 4;
            }
        }
    }
}
