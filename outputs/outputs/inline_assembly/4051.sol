pragma solidity ^0.8.0;
contract SemanticsEquivalence17xEquivalence {
    uint constant x1 = 1;
    uint constant x2 = 2;
    function bar() pure public {
        uint memory storageStore1 = 0;
        byte[] memory bytesStore1 = new bytes[](3);
        bytes1[] memory bytesStore2 = new bytes1[](3);

        uint memory mstore_0_x2 = x2;
        uint memory mstore_0_x1 = x1 + 1;
        uint memory mstore_0_x1_x1 = x1;
        bytes memory bytesStore = new bytes1[](2);
        bytes1[] memory bytes = new bytes1[](1);

        bytesStore1[1] = "this is a text!";

        byte[] memory memoryStore = new byte[](0);

        bytes memory memoryStore2 = new bytes("this is a text!");

        byte[] memory memoryStore3 = memoryStore.subarray(3);

        bytes memory memoryStore4 = bytesStore.subarray(1);

        bytes1[] memory memoryStore5 = bytesStore2.subarray(3);

        bytes1[] memory memoryStore6 = bytesStore1.subarray(2);

        while (true) {
            bytes memory memorystore_1_bytesStore1 = bytesStore1;

            bytes1 store1_bytesStore1 = bytesStore1[2];
            bytes1 memorystore_1_bytesStore2 = bytesStore2;
            bytes1 memorystore_1_bytesStore3 = bytesStore3;
            bytes1 memorystore_1_bytesStore4 = bytesStore4;
            bytes1 memorystore_1_store5 = store5[1];
            uint memorystore_1_store1 = x1;
            bytes memory memorystore_1_store2 = memoryStore3;
            bytes1 store1_store5 = (bytesStore1.subarray(3));
            bytes1 memorystore_1_store6 = (bytesStore1[1]);
            bytes1 store__bytesStore = bytesStore;
            bytes2 store1_bytes1 = bytes1(store1_bytes1 + store5);
            bytes1 store1_bytes = bytesStore2[1];
            bytes memory memorystore_1_store1_x1 = memoryStore;
            uint16 storageStore2_store3 = 32767;
            byte memory memorystore_2_store1_x2 = (bytesStore2[2]);
