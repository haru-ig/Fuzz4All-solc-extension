pragma solidity ^0.8.0;
contract MutatorLib {

    constructor () {
        Lib.MyStruct storage structMemory = Storage();
        Lib.MyStruct memory initialMemory = Lib.MyStruct(100, 1000);

        structMemory.a += 10;

        Lib.MyStruct memory changedMemory = structMemory;





        Storage().c += 10;
    }

    struct Storage {
        uint256 c;
    }
}
