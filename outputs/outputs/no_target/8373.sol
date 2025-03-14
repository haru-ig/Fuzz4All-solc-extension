pragma solidity ^0.8.0;
contract Mutated2 {
    address public a = address(0);
    bool public b = true;
    constructor() public {
        a = address(0);
        b = false;
    }
    function f() public {
        b = true;
        b = false;
    }
    function g() public {
        a = a;
        b = 0;
    }
}


pragma solidity ^0.8.0;
contract ComplexMutated2 {
    string public string;
    bytes32 public bytes32;
    bool public bool;
    uint8 public uint8;
    uint16 public uint16;
    uint32 public uint32;
    address public address;
    uint256 public uint256;
    constructor() public {
        string = "foo";
        bytes32 = "bar";
        bool = true;
        uint8 = 17;
        uint16 = 252;
        uint32 = 255;
        address = address(0);
        uint256 = 1;
        bool = true;
    }
    function f() public {
        bool = false;
        string = string;
        bytes32 = bytes32;
        bool = 0;
        uint8 = 0;
        uint16 = 17;
        uint32 = 34;
        address = a;
    }
}
