pragma solidity ^0.8.0;
struct Point {address e; uint64 x; uint64 y;}
contract SemanticEquivalentSolidityPointers3 {
  uint[][] mutATEDPOINTS;
}

pragma solidity ^0.8.0;
contract CompilerCheck {
    struct TestStruct {
        uint[] non_const_field;
    }

    function function_without_output() public {
        TestStruct s;
        s.non_const_field[1] = 1;
    }
}

pragma solidity ^0.8.0;
contract Check {
    struct TestStruct {
        uint32 x;
    }

    struct TestStructCopy {
        uint32 x;
    }

    function f() public pure payable { TestStruct s; TestStructCopy t; t.x = 1; s.x = 1; }

    function g() public pure returns (bool, uint) { TestStruct s; s.x = 1; (uint x, ) = s; return (true, x); }

    function h(uint) public pure returns (uint) { TestStruct s; uint x, y, z; x, y, z = s.x, s.x, s; return uint((uint64(s.x) * 1000000001ULL) / (uint64(s.y) + uint64(s.z))) % ((s.z << 32) + (s.y << 16) + uint64(s.x)); }
}
