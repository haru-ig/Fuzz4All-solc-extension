pragma solidity ^0.8.0;
contract Simple {
    function testMethod() public pure {
        uint32 x;
        uint32 y;
        assembly {
           x := 2
           y := sub(mload(x), mload(0))
        }

    }
}
contract Another {
    function testMethod() public pure {
        uint32 x;
        uint32 y;
        assembly {
           x := 2
           y := div(add(mload(x), mload(0)), 2)
        }
    }
}
contract Intra {
    function testMethod() public {
        uint32 x;
        uint32 y;
        assembly {
           x := 2
           y := mul(add(mload(x), mload(0)), 2)
        }
    }
}
contract Interior {
    function testMethod() public {
        uint32 x;
        uint32 y;
        assembly {
           x := 2
           y := and(add(mload(x), mload(0)), 2)
        }

    }
}
