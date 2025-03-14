pragma solidity ^0.8.0;
contract Simple {
    function testMethod() public pure {
        uint32 x;
        uint32 y;
        assembly {
            x := 2
            y := div(add(x,1), sub(2,x))
        }
    }
}
contract Another {
    function testMethod() public pure {
        uint32 x;
        uint32 y;
        assembly {
            x := 2
            y := and(mod(add(add(add(add(x,1),sub(x,3), 0), sub(sub(add(mload(x), mload(0)), 1)), add(2,0)), 3), 3)
        }
    }
}
contract Intra {
    function testMethod() public {
        uint32 x;
        uint32 y;
        assembly{
            x:=2;
            y := or(mload(x), and(add(x,1), 1))
        }
    }
}
contract Interior {
    function testMethod() public {
        uint32 x;
        uint32 y;
        assembly{
            x:=2;
            y := mload(0) & and(or(mload(x), and(add(x,1), 1)))
        }
    }
}
```
