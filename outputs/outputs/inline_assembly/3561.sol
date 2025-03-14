pragma solidity ^0.8.0;
contract ChangeGenerationsWithSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    function change1 (address v) public {
    b = address(1);
    b = address(2);
    b = address(c);
    b = address(d);
    b = address(e);
    b = address(b);
    b = a;
    b = a;
    b = b;
    b = b;
    b = b;
    b = b;
    b = b;
    b = b;  }
}
contract ChangeGenerationsWithoutSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    function change4 (address v) public {
    a = address(1);
    a = address(2);
    a = address(3);
    a = address(4);
    a = address(a);
    a = address(b);
    a = address(b);
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    }
}
