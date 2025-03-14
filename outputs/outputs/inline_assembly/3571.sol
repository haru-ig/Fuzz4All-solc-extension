pragma solidity ^0.8.0;
contract SquashGenerationsUsingYulInPlace {
    uint public gen;

    bool public initialized = false;
    uint public gen2 = 0;
    bytes2 public data = 0;
    function change (address v) public {
    a = address(3);
    b = address(3);
    c = address(3);
    d = address(3);
    e = address(0x103);
    e = address(3);
    f = address(3);
    change2();
    f = address(3);
    }
    function change2() public {
    a = a;
    b = a;
    c = a;
    d = a;
    e = a;
    e = a;
    f = address(3);
    }
}

pragma solidity ^0.8.0;
contract SquashGenerationsUsingYulWithSemantics {
    address public a;
    address public b;
    address public c;
    address public d;
    address public e;
    address public f;
    modifier isNotA(address a) {require(a!= address(0x0));}_
    modifier isNotB(address b) {require(b!= address(0x0));}_
    modifier isNotC(address c) {require(c!= address(0x0));}_
    modifier isNotD(address d) {require(d!= address(0x0));}_
    modifier isNotE(address e) {require(e!= address(0x0));}_
    modifier isNotF(address f) {require(f!= address(0x0));}_
    function change (address v) public {
    a = address(3);
    b = address(3);
    c = address(3);
    d = address(3);
    e = address(0x103);
    e = address(3);
    f = address(3);
    f = f;
    }
}
