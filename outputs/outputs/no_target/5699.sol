pragma solidity ^0.8.0;
contract Baz {
    address public a;
    address public a2;
    uint256 public a3;
}
contract Baz2 {
    function foo() public {

        Baz2 bb = new Baz2;
    }

    function bar() public {
        Baz bb = new Baz;

        bb.a2 = address(0);
    }
}


pragma solidity ^0.8.0;
contract Baz {
    address public a;
    uint256 public a2;
    bool public a3;
}
contract Baz2 {
    function foo() public {
        uint8 b = 0x1;
        uint16 c = 0x1;
        uint256 d = 0x1;
        bytes memory e = "test";
        bool f = 0x1;
        int64 g = 0x1;
        int8 h = 0x1;
        uint8 i = 0x1;
        uint16 j = 0x1;
        uint256 k = 0x1;
        string memory l = "test";
        address m = address(0);
    }

    function bar() public {
        uint8 b = 0x1;
        uint16 c = 0x1;
        uint256 d = 0x1;
        bytes memory e = "test";
        bool f = 0x1;
        int64 g = 0x1;
        int8 h = 0x1;
        uint8 i = 0x1;
        uint16 j = 0x1;
        uint256 k = 0x1;
        string memory l = "test";
        address m = address(0);
    }
}
contract Baz3 {
    function f() public {
        address a = address(0x23);
        bytes memory b = new bytes(1);
        bytes memory c = new bytes(1);
        bytes memory d = 0x1;
        int16 e = 0x1;
        bytes1 f = 0x1;
        bytes32 g = 0x1;
        bytes32 h = 0x1;
        uint16 i = 0x1;
        address j = address(0x23);
        address m = address(0);
    }
}
contract Baz4 {
    function g() public {
        address a = address(0x23);
        uint256 b = 0x3;
        address j = a;
    }
}
