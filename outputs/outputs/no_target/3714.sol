pragma solidity ^0.8.0;
contract W {
    uint d = 8;
    function g() internal returns (uint) {
        return uint216(d);
    }
}
contract D {
    uint private g10;
    address x;
    contract G {
        function get10() public pure returns (uint) {
            return 10;
        }
    }
    constructor(address initX) public {
        x = initX;
    }
    function a() public {
        G c = new G();
        g10 = c.get10();
    }
    function b() public returns (address) {
        return x;
    }
}
contract E is D {
    bool private x;
    address p;
    constructor() public {
        p = msg.sender;
    }
    function f1() public {
        c.f1();
        require(false, "0xd793ac5");
    }
    function f2() public returns (address) {
        c.f2();
        (address) (c + 123);
    }
    function f10() public returns (uint) {
        return c.g10;
    }
}
contract K {
    modifier foo1() {
        uint x1;
        contract g = {
            function h() public {
                x1 = uint216(d);
            }
        } x = d;

        if (x1 == 8)
        {
        x = 2 ** 32 - x;
        }

        d = x;
        x1;
        assembly {
            SSTORE(0x10, x1)
        }
        d = x;
        x = 2 ** 8 - x;
        d;
    }

    modifier foo2() {
        uint x1;
        bool y1;
        contract g1 = {
            function h(bool arg2) public {
                x1 = uint216(d);
                d = uint256(0);
                x1;
                assembly {
                    SSTORE(0x10, x1)
                }
                d = uint256(0);
                arg2;
                d = 0x2000000000000000;
                x1;
                assembly {
                    SSTORE(0x10, x1)
                }
            }
        } x = d;
        h(true);
        d;
    }

    function g() public returns (uint, address) {
        d = 8;
        d > 7;
        d;
        c.f10() = 24;
        (address c.f10 + int(123)).isZeroAddress;
        uint x1;
        bool y1;
        c.f10 = 2 ** uint(32) - c.f10;
        x1;
        c.f10 >= g1;
        uint o1;
        address o2;
        htrue();
        address o3;
        o1;
