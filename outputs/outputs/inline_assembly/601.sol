pragma solidity ^0.8.0;
contract Another {
    function testMethod() public pure {
        uint32 x;
        uint32 y;
        assembly {
            x := 2
            y := and(sub(mload(x), mload(0)), 2)
        }
    }
}
contract Intra {
    function testMethod() public pure {
        uint32 x;
        uint32 y;
        assembly {
            x := 2
            y := or(sub(mload(x), mload(0)), 2)
        }
    }
}
contract Interior {
    function testMethod() public pure {
        uint32 x;
        uint32 y;
        assembly {
            x := 2
            y := and(or(sub(mload(x), mload(0)), 2), 1)
        }
    }
}
