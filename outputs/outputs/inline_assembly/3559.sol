pragma solidity ^0.8.0;
contract ChangeGenerationsUsingYulWithSemantics {
    function changePublic1 () public {
    b = address(1);
    b = address(a);
    b = a;
    b = a;
    b = a;
    b = e;
    b = f;
    b = b}
}
contract ChangeGenerationsUsingYulWithSemantics {
    function changePublic2 () public {
    c = address(a);
    c = b;
    c = b;
    c = b;
    c = b;
    c = a;
    c = a;
    c = a;
    c = a;
    c = a;
    c = a;
    c = a;
    c = a;
    c = a; }
}
contract ChangeGenerationsUsingYulWithSemantics {
    function changePublic3 () public {
    d = address(a);
    d = b;
    d = b;
    d = b;
    d = b;
    d = a;
    d = a;
    d = a;
    d = a;
    d = a;
    d = a;
    d = f;
    d = a}
}
contract ChangeGenerationsUsingYulWithSemantics {
    function changePublic4 () public {
    e = address(1);
    e = address(f);
    e = f;
    e = f;
    e = a;
    e = a;
    e = a;
    e = a;
    e = a;
    e = f;
    e = a}
}
