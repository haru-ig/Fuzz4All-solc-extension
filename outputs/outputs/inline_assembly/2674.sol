pragma solidity ^0.8.0;
contract S is D {
    uint public x = 6*w - 20;
    uint public y = x;
}

contract E {
    function f(S storage s) public view returns (uint x) {
        return s.x + s.y;
    }
}

contract C {
    E e;
    function get_value() public returns (uint) {
        s32 x;
        assembly {
        s32(x) := e.f(s)
        }
        return x;
    }
}
```
