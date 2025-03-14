pragma solidity ^0.8.0;
contract Modifiers64x128 {
    uint constant x = 1e25;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 64))
        }
    }
}
contract Modifiers128x256 {
    uint constant x = 1e26;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 128))
        }
    }
}
contract Modifiers256x512 {
    uint constant x = 1e27;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 256))
        }
    }
}
contract Modifiers512x1024 {
    uint constant x = 1e28;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 512))
        }
    }
}
contract Modifiers2048x4096 {
    uint constant x = 1e29;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 1024))
        }
    }
}
contract Modifiers1024x2048 {
    uint constant x = 1e30;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 2048))
        }
    }
}
contract Modifiers1024x2048 {
    uint constant x = 1e30;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 4096))
        }
    }
}
contract Modifiers1024x2048 {
    uint constant x = 1e30;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 2048))
        }
    }
}
contract Modifiers1024x2048 {
    uint constant x = 1e30;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 1024))
        }
    }
}
contract Modifiers1024x2048 {
    uint constant x = 1e30;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(
