pragma solidity ^0.8.0;
contract MutatedSquashGenerationsUsingYulWithSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;


    constructor () {
        a = address(3);
        b = address(3);
        c = address(3);
        d = address(3);
        e = address(0x103);
        e = address(3);
        f = address(3);
        f = f;
    }
    function change (address v) public {
        a += a;
        b += b;
        c += c;
        d += d;
        e += e;
        e += e;
        f += f;
    }
}

pragma solidity ^0.8.0;
contract ModifiedMutatedSquashGenerationsUsingYulWithSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;


    constructor () {
        a = address(3);
        b = address(3);
        c = address(3);
        d = address(3);
        e = address(0x103);
        e = address(3);
        f = address(3);
        f = f;
    }
    function unchange (address v) public {
        a -= a;
        b -= b;
        c -= c;
        d -= d;
        e -= e;
        e -= e;
        f -= f;
    }
}
