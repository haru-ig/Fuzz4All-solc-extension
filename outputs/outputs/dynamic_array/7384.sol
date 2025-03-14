pragma solidity ^0.8.0;
contract Test32 {
    uint[] dynamic mem_dynArr;
    function modifyTest() public {
        for (uint i = 5; i < 10; i++) {
            mem_dynArr[i] = 10;
        }
    }
}
