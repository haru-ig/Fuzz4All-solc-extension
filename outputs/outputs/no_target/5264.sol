pragma solidity ^0.8.0;
contract SemanticallyEquiv {
    function f() pure public {
        uint32 x = 0;

        x += 100;
    }
}

pragma solidity ^0.8.0;
contract Equivalent {
    function g() pure public {
        uint32 x = 100;
        uint32 x2 = x + 100;
    }
}
contract NonEqual {
    function h() pure public {
        uint32 x = 100;
        uint32 x2 = x + 5;
    }
}
contract NonEquiv {
    function i() pure public {
        uint32 x = 0;
        uint32 x2 = x + 1 + 12;
    }
}
contract NonEquiv2 {
    uint8 j = 1;
    uint8 k = 2;
    function g() pure public {
        uint32 x = 0;
        uint32 x2 = x + j + k;
    }
}
contract NonEquiv3 {
    uint8 a = 100;
    function h() pure public {
        uint32 x = 0;
        uint32 x2 = a - 1;
    }
}
contract NonEquiv4 {
    uint8 a = 100;
    uint8 b = 200;
    function h(uint32 x) pure public {
        uint32 x2 = x + a - b;
    }
}
contract NonEquiv5 {
    uint8 a = 1;
    uint8 b = 2;
    function f() pure public {
        uint32 x = 0;
        uint32 x2 = a & b;
    }
}
contract NonEquiv6 {
    function f(uint32 a) pure public {
        uint32 x = 0;
        uint32 x2 = a >> 1;
    }
}
contract NonEquiv7 {
    uint8 a = 100;
    function h() pure public {
        uint32 x = 0;
        uint32 x2 = a + 100;
    }
}
contract NonEquiv8 {
    uint8 a = 20;
    uint8 b = 200;
    uin64 x = 0;
    function f() pure public {
        x += a - b;
    }
}
