pragma solidity ^0.8.0;
contract Test3 {
    uint[8] memoryArray;
    function ArrayUint64() public {
        memoryArray[4] = memoryArray[4] + 5;
        require(memoryArray[5]==6,"");
    }
}
