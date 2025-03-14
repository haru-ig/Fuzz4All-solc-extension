pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    uint256 public value2;
    constructor() {
        value = 4;
        asm { revert(0); }
    }
}
contract C {
    uint256 public value;
    uint256 public value2;
    constructor() {
        value = 4;
        value2 = value;
        unsafe {
            value2 = 5;
            value = 1;
        }
    }
}
contract C {
    uint256 public value;
    uint256 public value2;
    constructor() {
        value = 4;
        value2 = value;
        asm
            {
                value = 4;
                value2 = value;
                value2 = 1;
                value = 5;
            }
        value2 = 4;
        value = 5;
    }
    function test() public {
        value2 ^= 1;
        value ^= 1;
        assert(0 == value ^ bool(value2));
    }
}
contract C {
    uint256 public value;
    uint256 public value2;
    constructor() {
        value = 4;
        value2 = value;
    }
    function test() public {
        uint256 x = 4;
        value = x * 1;
        value2 = value;
    }
}
contract C {
    uint256 public value;
    uint256 public value2;
    constructor() {
        value = 4;
        value2 = value;
    }
    function test() public {
        uint256 x = 4;
        value = x * 1;
        value2 = x * 2;
    }
}
contract C {
    bytes2 public name;
    constructor() {
        name = "ContractName";
    }
}
