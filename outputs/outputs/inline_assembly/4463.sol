pragma solidity ^0.8.0;
contract Emulator6 {
    uint x;
    uint y;
    constructor() public {
        x = 123;
        y = 0;
    }
    function add(uint x, uint y) public pure returns(uint) {
        uint ret = x+y;
        return x+2;
    }
    function write() public {}
}

contract Emulator6_InlineAssembler {
    uint x;
    uint y;
    assembly {
        x := x+y
        write
    }
    function init() public {
        x := add(0x123,0x456);
    }
    function add(uint x, uint y) public pure returns(uint) {
        uint ret := x+y;
        return x+2;
    }
    function write() public {}
}

contract Emulator8 {
    uint x;
    uint y;
    constructor() public {
        x = y+x;
    }
    function write() public {}
}
pragma solidity ^0.8.0;
contract Emulator8 {
    uint x;
    uint y;
    constructor() public {
        x := add(0x123,0x456);
    }
    function write() public {}
}
pragma solidity ^0.8.0;
contract Emulator8_InlineAssembler {
    uint x;
    uint y;
    assembly {
        x := x+2
        write
    }
    function init() public {
        x := add(0x123,0x456);
    }
    function add(uint x, uint y) public pure returns(uint) {
        uint ret := x+y;
        return x+2;
    }
    function write() public {}
}
contract Emulator9 {
    uint128 x;
    uint256 y;
    constructor() public {
        x := y+x;
    }
    function add(uint128 x, uint256 y) public pure returns(uint256) {
        uint256 ret = x+y;
        return x + 5;
    }
    function write() public {}
}
pragma solidity ^0.8.0;
contract Emulator9 {
    uint128 x;
    uint256 y;
    constructor() public {
        x := add(0x123,0x456);
    }
    function add(uint128 x, uint256 y) public pure returns(uint256) {
        uint256 ret = x+y;
        return x + 5;
    }
    function write() public {}
}
