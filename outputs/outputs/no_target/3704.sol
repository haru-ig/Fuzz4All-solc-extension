pragma solidity ^0.8.0;
contract X {
    function f() public returns (uint) {
        return 3;
    }
}
contract X2 {
    function f() public returns (uint) {
        return 4;
    }
}
contract X3 {
    function f() public returns (uint) {
        return 5;
    }
}
contract L {
    function f() public returns (uint) {
        return 1;
    }
}
contract C is L {
}
contract C2 is L {
}
contract C3 is L {
}
contract C4 is L {
    function g() public returns (uint) {
        return 1;
    }
}
library Lib is X3, X2, C {
    function f() external {
        x.f();
        unchecked {
            bytes memory b = new bytes(2);
            b.length;
            C3 _instance;
        }
        uint x1 = 1;
        bool x2;
        function f2() internal {
            unchecked {
            bytes memory b = new bytes(2);
            b.length;
            C3 _instance;
        }
        uint x1 = 1;
        bool x2;
        function f2() internal {
            x.f();
        }
        L l3;
        G g4;
        X x5;
        G g6;
        X j7;
        uint x8 = 1;
    }
}
contract B {
    function f() public view returns (uint) {
        return 1;
    }
}
contract C {
    function f() public returns (uint) {
        return 2;
    }
}
contract C4 {
}
contract C5 is C4 {
}
contract C6 is C4 {
    function g() public returns (uint) {
        return 2;
    }
}
contract C7 is C4 {
    function g() public returns (uint) {
        return 3;
    }
}
contract C3 {
}
contract C8 is C3 {
}
contract C9 is C8 {
}
contract D is B, C5, C3, C6 {
    function h() public returns (uint) {
        return 1;
    }
}
contract C10 is B, C5, L {
    function h() public returns (uint) {
        return 1;
    }
    function f() public returns (uint) {
        return 2;
    }
}
contract D1 {
    function f() public returns (uint) {
        return 1;
    }
}
contract C11 is D, D1 {
}
contract F {
}
contract B01 is L, B, C4, C2, C1, C, D, D1 {
    function f() public returns (uint) {
        return 1;
    }
}
contract C12 is C12 {
    function f() public returns (uint) {
