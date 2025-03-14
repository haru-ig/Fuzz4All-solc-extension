pragma solidity ^0.8.0;
contract ChangeSemanticsUsingYulWithSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    address public g;
function change1 (address v) public {
    a = v;
    a = v;
    a = v;
    a = f;
    a = f;
    a = f;
    a = f;
    a = a;
    a = a;
    a = f;
    a = f;
    a = a;
    a = a;
    a = a;
}
function change9 (address v) public {
    a = v;
    a = v;
    a = v;
    a = v;
    a = g;
    a = g;
    a = g;
    a = v;
    a = v;
    a = v;
    a = g;
    a = g;
    a = a;
    a = v;
    a = v;
    a = g;
}
function change2 (address v) public {
    a = v;
    a = v;
    a = g;
    a = g;
    a = a;
    a = a;
    a = f;
    a = f;
    a = a;
    a = a;
    a = a;
    a = f;
    a = f;
}
}
