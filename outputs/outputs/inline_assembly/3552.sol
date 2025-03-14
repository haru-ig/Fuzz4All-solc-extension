pragma solidity ^0.8.0;
contract ChangeGenerationsUsingYulWithSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    function change2 (address v) public {
    a = address(1);
    a = address(2);
    a = address(a);
    a = address(a);
    a = address(a);
    a = f;
    a = f;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a;
    a = a; }
}
