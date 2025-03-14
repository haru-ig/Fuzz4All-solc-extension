pragma solidity ^0.8.0;
contract Simple {
    function testMethod() public pure {
        uint32 x;
        uint32 y;
        assembly {
            x := 4
            y := add(x, mload0())
        }
    }
}
contract Another {
    function testMethod() public pure {
        uint32 x;
        uint32 y;
        assembly {
            x := 4
            y := addx(x, x)
        }
    }
}
contract Intra {
    function testMethod() public {
        uint32 x;
        uint32 y;
        assembly {
            x := 4
            y := addm(x, x)
        }
    }
}
contract Interior {
    function testMethod() public {
        uint32 x;
        uint32 y;
        assembly {
            x := 4
            y := amd(x, x)
        }
    }
}
