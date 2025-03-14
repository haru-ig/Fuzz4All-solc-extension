pragma solidity ^0.8.0;


interface Caller3 {
    function setNewFunc() external;
}

contract SimpleStorage {

    Storage public store;

    constructor() {
        store = Storage();
    }
}

contract Caller {
    SimpleStorage public storage;


    constructor(SimpleStorage storageInstance) {
        storage = storageInstance;
    }


    function testF() public view {


        storage.setNonPayableFallbackFunction(msg.value);
    }

    function test() public {

        if (address(storage)!= msg.sender) {
            return;
        }


        storage.getFunction1();



        storage.setNonPayableFallbackFunction(msg.value);
    }


    function withdraw() public {

        address(storage).transfer(1 ether);

        Caller2(address(storage)).setNewFunc();
    }
}
