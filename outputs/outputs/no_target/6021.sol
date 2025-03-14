pragma solidity ^0.8.0;
import "Lib.sol";
contract Test {
    struct Foo { uint8 a; uint8 b; uint8 c; }
    Lib.MyStruct[] internal s;

    function test() public {
        uint8[] memory b = new uint8[](1);
        uint8[] memory b1 = new uint256[](1);
        uint8[] memory b2 = new int16[](1);
        uint8 i0;
        uint8 i1;
        uint8 i2;
        foo(b);
        foo(b1);
        foo(b2);
    }

    function foo(uint8[] memory b) public {
        for (uint8 i = 0; i < 1; i++) {
            b[0] = 1;
        }
        Lib.MyStruct storage tmp;
        uint8 tmp0;
        uint8 tmp1;
        foo3(tmp0);
    }

    function foo(uint8[] memory b) public {
        bar(b);
        if (true) foo2();
    }

    function foo3(uint8 x) public {
        uint8 y;
        if (y >= 128) foo2;
    }

    function foo2() public pure {
        int16[] memory b = new int16[](1);
        uint8 tmp0;
        if (x > 0x80) foo(b);
    }

    function bar(uint8[] memory b) public pure {
        Lib.MyStruct[] memory tmp;
        foo(tmp);
    }
}



pragma solidity ^0.8.0;
library Lib {
    struct MyStruct { uint8 a; }
}
