pragma solidity ^0.8.0;
contract ChangeSemanticsUsingYulWithSemanticsOverriding {
    address public v;
    function change1() public {
        v = address(1);
        v = address(2);
        v = v;
        v = v;
        v = v;
        v = v;
        v = address(a);
        v = address(a);
        v = v;
        v = v;
        v = v;
        v = v;
    }
}
contract ChangeSemanticsUsingYulWithSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    address public g;
    function override_semantics() public payable override {
    a = address(1);
    a = address(2);
    a = address(a);
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
    a  = a;
}
