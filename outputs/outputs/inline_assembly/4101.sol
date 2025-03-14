pragma solidity ^0.8.0;
contract Modifiers83 {
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 83))
        }
    }
}
contract Modifiers832x64 {
    uint constant x = 1e12;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 832))
        }
    }
}
contract Modifiers32x6464 {
    uint constant x = 1e12;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 3264))
        }
    }
}
contract Modifiers32x6451 {
    uint constant x = 1e12;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 3251))
        }
    }
}
contract Modifiers32x4646x83 {
    uint constant x = 1e12;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 32464683))
        }
    }
}
contract Modifiers8383 {
    uint constant x = 1e12;
    function test (uint x, uint) public {
        assembly {
            mstore(x, mul(x, 8383))
        }
    }
}
