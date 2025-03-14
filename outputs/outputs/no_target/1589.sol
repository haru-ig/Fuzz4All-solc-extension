pragma solidity ^0.8.0;
contract Semantic0003 {
    function new_semantic_0003() public pure {
        uint256 x = 0;
        x > 0x2333 333;
        (x == 0);
        bool x1 = false;
        bool y1 = false;
        (x1 == y1);

        uint256 x2 = 0;
        x!= x2;
        (x == x2);

        uint128 x3 = 0;
        x!= uint256(x3);
        (uint128(x) == 0);
        (uint128(x2) == 0);

        uint128 x4 = 128;
        x!= uint160(x4);
        x1 | x4;
        (uint128(x) == 0);
        (uint128(x2) == 128);
        (uint128(x4) == 0);

        uint160 z = 160;
        z < 160x160;
        bool z1 = false;
        bool z2 = false;
        bool z3 = false;
        bool z4 = false;
        (z == 0);
        (z1 == z2);
        (z3 == x1);
        (z4 == x4);

        bool x41 = false;
        bool x42 = false;
        bool x43 = false;
        (x >= 160);
        (x > 160);
        (x >= 160x160);
        (x == x41 && x42 && x43);

        x = 0x2333;
        uint128 x33 = 42;
        uint128 x333 = 42;


        (x <= x33 && x < 42);

        /* This statement is not semantically equivalent and violates the solidity specification
