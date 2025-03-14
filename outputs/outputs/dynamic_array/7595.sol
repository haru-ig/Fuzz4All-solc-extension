pragma solidity ^0.8.0;
contract Test14 {
    uint A;
    function a() public {
        A = 10;
    }
    function b() public {
        A = 70;
    }
}

pragma solidity ^0.8.0;
contract Test15 {
    uint b[10];
    constructor() public {
        b[0] = 1;
    }
    function f0() public {
        b[1] += 2;
    }
    function f() public pure {
        b[2] -= 3;
    }
}

pragma solidity ^0.8.0;
contract Test16 {
    uint[] memory a;
    constructor() public {
        a = new uint[](4);
    }
    function g() public {
        a[0] = 4;
        a[1] = 1;
        a[2] = 10;
        a[3] = 20;
    }
    function f() public pure {
        a[a.length] += 100;
    }
}

pragma solidity ^0.8.0;
contract Test17 {
    uint[][] memory a = new uint[2][3];
    function h() public {
        for (uint j = 0; j < a.length; j++)
            for (uint i = 0; i < a[j].length; i++)
                a[j][i] = i;
    }
    function f() public pure {
        a[0][0] += 5;
    }
}

pragma solidity ^0.8.0;
contract Test18 {
    uint[] memory a;
    uint[] memory b;
    string[] memory c;
    constructor() public {}
    function f0() public {
        a = a.concat(a);
        b.push(b.pop());
        c.push(c.pop());
        a.length += b.length;
        b.length += c.length;
        a = a.concat(new uint[](1));
        b = b.concat(a);
        c = c.concat(b);
    }
    function g() public {
        a[0] = a[0];
        a = a.concat(new uint[](1));
    }
    function f() public pure {
        a[0] = a
