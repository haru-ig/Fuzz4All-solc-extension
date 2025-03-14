pragma solidity ^0.8.0;
contract SemanticallyEquivalentYulInlineAssemblyExample {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    address public g;
function semanticallyEquivalent1 (address v) public {
    a = v;
    a = v;
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
    a = v;
    a = v;
}
function semanticallyEquivalent9 (address v) public {
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = a;
    a = a;
    a = f;
    a = f;
    a = a;
    a = a;
}
function semanticallyEquivalent2 (address v) public {
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = v;
    a = a;
    a = a;
    a = v;
    a = g;
}
