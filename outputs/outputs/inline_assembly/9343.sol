pragma solidity ^0.8.0;
contract Test {

    function test1(int a, int b) public pure {
        uint value1 = a * b;
        uint value2 = uint8(a) + uint8(b);
    }

    function test2() public pure {
        uint value1 = 1;
        uint value2 = 2;
        uint value3 = uint128(1);
        uint value4 = uint256(1);
        uint value5 = uint32(1);
        uint value6 = uint64(1);
        uint value7 = uint128(2);
        uint value8 = uint256(2);
        uint value9 = uint32(2);
        uint value10 = uint64(2);
        uint value11 = uint128(3);
        uint value12 = uint256(3);
        uint value13 = uint32(3);
        uint value14 = uint64(3);
    }

    function test3() public pure {
        uint8 value1 = 1;
        uint8 value2 = 2;
        uint8 value3 = 3;
        uint8 value4 = 4;
        uint8 value5 = 5;
    }

    function test4() public pure {
        uint128 value = 1;
        uint128 value1 = 2;
        uint128 value2 = 3;
        uint128 value3 = 4;
        uint128 value4 = 5;
    }

    function test5() public pure {
        uint256 value = 1;
        uint256 value1 = 2;
        uint256 value2 = 3;
        uint256 value3 = 4;
        uint256 value4 = 5;
    }

    function test6() public pure {
        uint160 value = 1;
        uint160 value1 = 2;
        uint160 value2 = 3;
        uint160 value3 = 4;
        uint160 value4 = 5;
    }

    function test7() public pure {
        uint32 value = 1;
        uint32 value1 = 2;
        uint32 value2 = 3;
        uint32 value3 = 4;
        uint32 value4 = 5;
    }

    function test8() public pure {
        uint64 value = 1;
        uint64 value1 = 2;
        uint64 value2 = 3;
        uint64 value3 = 4;
        uint64 value4 = 5;
    }

    function test9() public pure {
        (uint160, uint256) memory memoryValue =
            (1
