pragma solidity ^0.8.0;
contract Emulator6 {
    uint x = 10;
    function add (uint x, uint y) public returns(uint) {
        uint ret = 42+x;
        ret;
        x;
        if (x > 42) {
            revert();
        }
        if (x < 42) {
            revert();
        }
    }
    function write() public pure {}
}

pragma solidity ^0.8.0;
contract Emulator5 {
    uint x = 0;
    mapping (uint => uint) __XStore;
    function __store (uint index, uint val) internal pure {
        __XStore[index+1] = val;
    }
    function __load (uint index) internal pure returns (uint) {
        return __XStore[index+1];
    }
    function add (uint x, uint y) public returns(uint) {
        uint ret = 42+x;
        __load (41)+ret;
        __store (43+x,y);
    }
    function write() public pure {}
}

pragma solidity ^0.8.0;
contract Emulator6x {
    uint x = 0;
    mapping (uint => uint) __XStore;
    function __store (uint index, uint val) internal pure {
        __XStore[index+1] = val;
    }
    function __load (uint index) internal pure returns (uint) {
        return __XStore[index+1];
    }
    function add (uint x, uint y) public returns(uint) {
        uint ret = 42+x;
        ret;
        x;
        if (x > 42) {
            revert();
        }
        if (x < 42) {
            revert();
        }
        __store (41+x,42);
        return __load (43+x);
    }
    function write() public pure {}
}

pragma solidity ^0.8.0;
contract Emulator256 {
    bytes32[] x;
    function write(uint len, address addr) public pure {
        for (uint i = 0; i < len; i++) {
            x[i] = (bytes32(0xdeadBEEF + i%26));
        }
    }
    function read(uint len) public returns(bytes32[] memory) {
        bytes32[]
