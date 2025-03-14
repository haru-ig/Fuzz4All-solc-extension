pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract A {
    function f() public pure returns(uint8 x) {
        return 1;
    }
}
pragma solidity ^0.8.0;
contract B {
    uint16 public x;
    function f() public pure returns(uint8 x) {
        return 1;
    }
}
contract C {
    function f() public pure returns(uint8 x) {
        return 1;
    }
}
pragma solidity ^0.8.0-abiencoderv2;
contract D is B, C {

    constructor(
        bool a, uint8 b,
        uint256 c, uint16 d,
        (uint8 e,uint8 f) memory,
        (uint8 g,(uint8 h) memory) memory,
        uint32 i, uint512 j, uint(uint8) k, uint8 l, uint9 m, uint64 n)
        public {
    }

    uint8 f() public pure {
        return 1;
    }
}

pragma solidity ^0.8.0;
contract E {
    function f() public pure {
        throw;
    }
}

pragma solidity ^0.8.0;
contract F {
    function f() public pure {
        throw;
    }
}
contract Main {
    function f() public pure {
        (bool a, uint16 x) = (true, 256);
        (a, x) = (false, 256);
        (a = false, uint256 y) = (true, 256);
        (a, y) = (false, 256);
        (uint145 a, uint64 x) = (true, 256);
        (a, x) = (false, 256);
        (uint2[1][3][3][3] memory memoryarray, uint[1][3][3] memory memoryarray2, uint l) = (true, 256);
        (a, l) = (false, 256);
        (a, a) = (true, 256);
        (uint8 a; uint8 a[2]) = (true, 256);
        (a, a[0]) = (false, 256);
        (uint12[1][3][3][3] memory memoryarray3, uint[] memory memoryarray4, uint l2) = (true, 256);
        (a, l2) = (false, 256);
        (a, a[0]) = (false, 256);
        (uint16[1][3][3][3] memory memoryarray5, uint memory[] memory memoryarray6, uint l3) = (true, 256);
        (a, l3) = (false, 256);
        (a, a[0]) = (
