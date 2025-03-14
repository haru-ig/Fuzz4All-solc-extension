pragma solidity ^0.8.0;
contract SquashGenerationsUsingYulWithSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    function change2 (address v) public {
    a = c;
    b = c;
    c = address(a);
    d = address(d);
    d = e;
    d = a;
    f = d;
    }
}
