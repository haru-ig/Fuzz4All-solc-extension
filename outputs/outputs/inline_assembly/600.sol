pragma solidity ^0.8.0;
contract Simple {
    function testMethod() public pure {
        uint32 x, y, z;
        assembly {
            x := 2
            y := sub(x, 2)
            z := div(add(x,x), 2)
        }
    }
}
contract Another {
    function testMethod() public pure {
        uint32 x, y, z;
        assembly {
            x := 2
            y := div(add(x, x), 2)
            z := add(x,x)
        }
    }
}
contract Intra {
    function testMethod() public {
        uint32 x, y, z;
        assembly {
            x := 2
            y := mul(add(x, x), 2)
            z := and(add(x, x), 2)
        }
    }
}
contract Interior {
    function testMethod() public {
        uint32 x, y, z;
        assembly {
            x := 2
            y := or(add(x, x), 2)
            z := or(and(add(x, x), 2), and(and(x,x),0xffffffff00000000))
        }
    }
}
contract Final {
    function testMethod() public pure {
        uint32 x, y, z;
        assembly {
            x := 0
            y := x
            z := div(sub(x, y), div(add(x, y), x))
        }
    }
}
contract InteriorFinal {
    function testMethod() public pure {
        uint32 x, y, z;
        assembly {
            x := 0
            y := add(x, 1)
            z := add(x, 1)
        }
    }
}
