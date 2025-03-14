pragma solidity ^0.8.0;
contract Baz2 {
    mapping(address => uint256) b;
    mapping(uint160 => uint256) c;
    uint public c;
    mapping(address => mapping(uint160 => uint256)) d;
}
contract Baz {
    function f() internal view returns (Baz2) {
        return (Baz2(a));
    }
}
contract Foo {
    function f() private view {
        uint b = a;
    }
}
contract Bar {
    function x() public pure returns (bool) {
        uint b = a < 0;
        return b;
    }
}
contract Bar {
    function x() public pure returns (bool) {
        uint b = a;
        return b < 0;
    }
}
contract Bar {
    function x() public view returns (bool) {
        uint b = a;
        return b < 0;
    }
}
contract Bar {
    function x() public view {
        uint b = a;
        b < 0;
    }
}
contract Bar {
    function x() public pure {
        uint b = a;
        b < 0;
    }
}
contract Bar {
    function x() public {
        uint b = a;
        b < 0;
    }
}
contract Bar {
    function x() public returns (bool) {
        uint b = 0;
        return b;
    }
}
contract Bar {
    function x() public returns (bool) {
        uint b = 0x11;
        return b;
    }
}
contract Bar {
    function x() public returns (bool) {
        uint b = 0xfffffffffff;
        return b < 0;
    }
}
contract Bar {
    function x() public {
        uint b = 0xfffffffffff;
        b < 0;
    }
}
contract Bar {
    function x() public returns (bool) {
        uint b = a;
        b < 0;
    }
}
contract Bar {
    function x() public returns (bool) {
        uint b = 0x11;
        b < 0;
    }
}
contract Bar {
    function x() public returns (bool) {
        uint b = 0xfffffffffff;
        b < 0;
    }
}
contract Bar {
    function x() public returns (bool) {
        uint b = a;
        b < 0xfffffffffff;
    }
}
contract Bar {
    function f() public returns (bool) {
        uint256 b = a;
        return b < 0xfffffffffff;
    }
}
contract Bar3 {
    uint public x;
    function f() public returns (uint) {
        uint b = a;
        return 20;
    }
}
contract Bar3 {
    uint x;
    function g() public returns (uint) {
        uint b = a;
        return 20;
    }
}
contract Bar3 {
