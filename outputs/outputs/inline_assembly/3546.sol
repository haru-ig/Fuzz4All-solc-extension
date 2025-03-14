pragma solidity ^0.8.0;
contract ChangeSemanticsUsingYulWithoutSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    address public g;
function change1 (address v) public {
    a = v;
    b = v;
    c = v;
    d = v;
    e = v;
    f = v;
    g = v;
}
function change9 (address v) public {
    a = v;
    b = v;
    c = v;
    d = v;
    e = v;
    f = g;
    g = g;
}
function change2 (address v) public {
    a = v;
    b = v;
    c = g;
    d = g;
    e = a;
    f = a;
    g = a;
}
}
pragma solidity 0.8.0;

contract changesemantics with ChangeSemanticsUsingYulWithSemantics {
    constructor() {
        address addr1 = msg.sender;
        address addr2 = ChangeSemanticsUsingYulWithSemantics.addr1;
        b = address(0xDEADBEEF + 0xDEADC0DEDEADC);
        b = addr2;
        a = addr1;
        a = ChangeSemanticsUsingYulWithSemantics.create(msg.sender);
        a = addr1;
        a = ChangeSemanticsUsingYulWithSemantics.create(address(1));
    }
    function create(address _addr) public pure returns(address addr) {
        return addr = _addr;
