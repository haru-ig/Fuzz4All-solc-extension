pragma solidity ^0.8.0;
contract test3 {
    uint8[3] memoryA;
    function test3() public {
        uint index=0;
       while (index!=4) {
            memoryA[index]=1;
            index++;
        }
    }
}

pragma solidity ^0.8.0;
contract test4 {
    function test4() public {
        uint testSum;
        testSum = 1;
        for (uint i = 0; i < 1000000000; i++) {
            testSum = testSum + 1;
        }
        assertEq(testSum,1000000000);
    }
}

pragma solidity ^0.8.0;
contract test5 {
    function test5() public {
        uint testSum;
        testSum = 1;
        for (uint256 i = 0; i < 1000000000; i++) {
            testSum = testSum * i;
        }
        assertEq(2147483648,testSum);
    }
}
