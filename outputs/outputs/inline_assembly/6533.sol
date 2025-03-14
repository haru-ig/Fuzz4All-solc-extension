pragma solidity ^0.8.0;
pragma experimental ABICodegen;

contract MixedContactsExample71 {
    uint[2] memory memoryStorage;
    uint constant b = 3;
    uint constant c = 4;
    address constant a = 0xf6D68a7dE5553d76253252901589c0EEc5C1e005;
    uint[2] storageStore2(uint[2] memoryStorage) private returns (uint[2]) {
        uint[2] storageStore(uint[2] memoryStorage) private returns (uint[2]) {
            memoryStorage[0] = b;
            memoryStorage[1] = c;
            return (memoryStorage);
        }
        a;
        a;
        doSomething();
        uint[2] memoryStorage = storageStore2(storageStore(memoryStorage));
        return (memoryStorage);
    }
    function doSomething() public {
        uint[2] memoryStorage = storageStore2(memoryStorage);
    }
}
