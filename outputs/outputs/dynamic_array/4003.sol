pragma solidity ^0.8.0;
contract C {
    uint[] public s1;
    uint[] public s2;
    uint[] public s3;
    constructor() public {
        s1.push(1);
        s2.push(2);
        s2 = [1, 2, 3];

        s3[0] = 4;
        s3[1] = 5;
    }
    function f() public {
        s2.push(4);
        s2.push(5);
    }
}

pragma solidity ^0.8.0;
interface I {
    function f() external view returns(uint[]);
}
contract C {
    uint[] public s;

    constructor() public {
        s[0] = 5;
        s[1] = s[0];
        s = s.reverse();
    }
    function f() public {
        s.push(1);
    }
}

contract C {
    uint[] public arr;
    uint[] public b;
    uint[] public c;
    uint[] public d;
    uint[] public e;
    uint[] public f;
    uint[] public g;
    uint[] public h;
    uint[] empty;
    constructor() public {
        arr = [0];
        b = arr;
        c = empty;
        arr[0] = 1;
        uint[] memory h = b;
        d = b;
        e = h;
        f = [c];
        g = c;
        e.push(d);
        f.push(d);
        d = [e];
        d.push(h);
        h.push(h);
        h = h[2];
        d.pop(); h.push(1);
        d.pop();
        h[2] = 1;
        h = h[2];
        d = [h];
        e.pop(); d.pop(); empty.push(e);
        e = d;
        d = empty;
        e[0] = d;
        d.push(b);
        h[2] = e;
        h = h[2];
    }
}
