pragma solidity ^0.8.0;
contract C {
    bytes20[2] b;
    function modifiesArray(bytes20[] memory array) public pure returns (bool) {
        for (uint256 i = 0 ; i < array.length ; i++) {
            bytes20 mem = array[i];
            if (array.length <= 1) {
                return false;
            }
            if (i < 100) {
                array[i] = mem;
            }
        }
        return true;
    }
}

pragma solidity ^0.8.0;
contract C {
    bytes20[] memory test;
    bytes20[3] test2;
    bytes20[4] test3;
    bytes20[5] test4;
    bytes20[6] test5;
    bytes20[7] test6;
    bytes20[8] test7;
    bytes20[9] test8;
    bytes20[10] test9;
    bytes20[11] test10;
    bytes20[12] test11;
    bytes20[13] test12;
    bytes20[14] test13;
    bytes20[15] test14;
    bytes20[16] test15;
    bytes20[17] test16;
    bytes20[18] test17;
    bytes20[19] test18;
    bytes20[20] test19;
    bytes20[21] test20;
    bytes20[22] test21;
    bytes20[23] test22;
    bytes20[24] test23;
    bytes20[25] test24;
    uint256 test25;
    function modifiesMemoryArrays(bytes20[] memory memoryTest, bytes20[3] memory memoryTest2, bytes20[4] memory memoryTest3, bytes20[5] memory memoryTest4, bytes20[6] memory memoryTest5, bytes20[7] memory memoryTest6, bytes20[8] memory memoryTest7, bytes20[9] memory memory
