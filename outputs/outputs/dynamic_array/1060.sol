pragma solidity ^0.8.0;
contract MutatingReturnsArraysMutatedReverted {
    function subtract256() pure public returns (uint256) { return 255; }
}


pragma solidity ^0.8.0;
contract Mutation {
    function getReturnArrays() pure public returns (uint256[] memory) {
        string memory s = "hello";
        bool b = false;
        bytes memory bytesLiteral;
        uint256 c = 1234;
        bytes memory memoryBufferContainingBytes1 = memory.new(2);
        bytes memory memoryBufferContainingBytes2 = memory.new(4);
        bytes storage bytesStoringDataContainingBytes = memory.storage();
        bytes1 memory memory1 = bytes.new(2);
        bytes1[2] memory memory2 = bytes.storage();
        bytes2 memory memory3 = bytes.new(4);
        bytes1[1][2] memory memory4 = bytes1.new(2);
        bytes1[1][2] memory memory5 = bytes1.storage();
        bytes[3] memory memory6 = bytes1.new(3);
        bytes32 memory memory7 = memory3.new(8);
        (memory7) = 0x5a5a5aa5aaaaaaaaaaaaa;
        bytes1 memory bytes1ContainingNull = bytes.new(1);
        bytes1[2] memory memory2ContainingNull = bytes1.new(2);
        memory2ContainingNull = memory2;
        memory1[2] = memory.storage();
        memory2[] memory arrayContainingBytesWithNull = memory2.new(1);
        uint16 zero
