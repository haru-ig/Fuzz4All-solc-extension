pragma solidity ^0.8.0;
contract Mutations {
    function modifyTest() public pure {
        Semantics memory memoryTest1 = Semantics();
        uint8 storage memoryTest2 = uint8(5);
        bool8 memoryTest3 = bool8(2);
        address memoryTest4 = '0xE07aB0B16d090593a1221e5373eCDB227fD72085';
    }
}
