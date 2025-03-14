pragma solidity ^0.8.0;
contract C {
    struct S {
        uint[] a;
    }
    S s;
    S r1;
    S r2;
    function f() public {
        s.a[0] = 1;
        r1 = s;
        r2 = s;
    }
    function s1() public view returns (S) {
        s.a[0] = 1;
        r1.a[0] = 2;
        r2.a[0] = 3;
        return s;
    }
}
pragma solidity ^0.8.0;
contract C {
    struct S {
        uint[] a;
    }
    S s;
    S r1;
    S r2;
    function f() public {
        s.a[0] = 1;
        r1 = s;
        r2 = s;
    }
    function s1() public view returns (S) {
        s.a[0] = 1;
        s.a.push(2);
        s.a[2] = 3;
        r1.a[2] = 4;
        r2.a[1] = 5;
        return s;
    }
}

pragma solidity ^0.8.0;
contract D {
    struct S {
        struct T {
            uint[] a;
        }
    }
    S s;
    function f() public {
        S.S.T storage t = s.s.s;
        t.a[0] = 1;
    }
}
pragma solidity ^0.8.0;
contract D {
    struct S {
        struct T {
            uint[] a;
        }
    }
    S r1;
    S r2;
    S s1;
    S s2;
    S s3;
    function f() public {
        r1 = r2 = s1 = s2 = s3;
        S.S.T storage t1 = r1.s.s.s;
        t1.a[0] = 1;
        s3 = s1;
        S.S.T storage t2 = s2.s.s.s;
        t1.a[0] = 1;
        s3.s.s.s.s.s.a[0] = 2;
    }
}
