pragma solidity ^0.8.0;
contract Test02 {
    uint8[] arr;
    function tst() public {
        uint8[12] memory oldStorage = arr;
        for (uint8 i=0; i < oldStorage.length; i++) {
            uint8 x = oldStorage[i];
            oldStorage[i] = x + (uint8)(uint256(i) & 0xFF);
            arr[i] = x + (i & 0xFF);
        }
    }
}
