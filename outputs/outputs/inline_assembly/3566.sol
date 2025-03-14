pragma solidity ^0.8.0;
contract SquashGenerationsUsingYul {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    function change (address v, address a, address b, address c, address d, address e, address f) public {
    a = c;
    a = e;
    e = e;
    a = c;
    b = d;
    b = b;
    c = a;
    d = a;
    d = f;
    c = c;
    b = b;
    c = e;
    b = a;
    a = e;
    f = f;
    c = c;
    a = a;
    f = f;
    }
}
