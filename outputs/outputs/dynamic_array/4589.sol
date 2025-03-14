pragma solidity ^0.8.0;
contract MutatorExample {
    function f() public {
        uint[15] storageData = StorageData(0);
        storageData = storageData + uint[7]();
        storageData = storageData.pop() * 4;
        storageData[14] = storageData[2];

        storageData.push(uint(503287392403695419080058564420495160));
        storageData[2] = 15;
        storageData[897567086 ] = storageData[7];
        storageData[997567086 ] = uint(101);
        storageData[64244358 ] = uint(101);
        storageData[13] = uint(101);
        storageData[897567086 ] = uint(101);
    }
}
