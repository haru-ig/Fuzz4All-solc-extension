pragma solidity ^0.8.0;
contract Test9489 {
    struct A {
        uint256 array1;
    }
    struct B {
        uint256 array2;
    }
    struct C {
        uint256 array;
    }
    function f(A storage _a, B storage _b) public pure {
        _a.f = 1;
        _b.g = 2;
        _a.f;
        _a.f;
        _a.f = 3;
        _a.f = 4;
        _a.f;
        _a.f = 5;
        _b.f = 6;
        _a.array1;
        _a.array2;
        _a.array1;
        _a.array1;
        _b.array2;
        _b.f = 7;
        _b.f = 8;
        _b.f = 9;
        _b.array;
        _b.array1;
        _b.array2;
    }
    function g() public pure {
    }
    function h() public pure {
        A storage a;
        A storage b;
        B storage c = A({array: 3});
        A storage s;
        C storage d = C({array: 3});
        B storage c2;
        C storage s2;
        A storage t = A({array: 3});
        if (c) {
            s.f = 7;
            s.f = 8;
            s.f = 9;
        }
        s2 = A({array: 3});
        s;
        s2;
        uint256[] memory arr = new uint256[](3);
        arr[0] = 1;
        arr[1] = 1;
        B memory m = A({array: 3});
        B memory m2 = A({array: (arr.length - arr).div(2).add(1)});
        B memory m3;
        B memory m4;
        if (_b > 0) {
            m.f = 7;
        }
        if (_b > 0) {
            c.array;
        }
    }
    function i() public pure {
    }
    function j() public pure {
    }
}
