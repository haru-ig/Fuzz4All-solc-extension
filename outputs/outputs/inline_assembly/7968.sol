pragma solidity ^0.8.0;
contract L71MultipleReturn4 {
    uint[5] memory storage storageArray;
    uint x;
    uint y;
    uint z;
    function sneaky() public returns (uint[5] memory, uint) {
        if (false) {
            storageArray[3] = y;
            storageArray[4] = 1;
            return (storageArray, x);
        }
        storageArray[0] = x;
        storageArray[1] = 0;
        storageArray[2] = y;
        return (0, 0);
    }
}
