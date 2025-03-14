pragma solidity ^0.8.0;
contract O {
    uint public x;
    mapping(address=>uint) public y;
    function f() public {
        uint a;
        a = x;
        a = x;
        a = x;
        y[x] = 1;
    }
    function g() public {
        uint a;
        a = 1;
        a = 1;
        a = a;
        y[(address)0x00] = 1;
    }
    function h() public {
        uint a;
        a = 1;
        a = 1;
        a = x;
        oo(x);
    }
    function oo(address a) public {
        uint b;
        b = a;
        b = 0xdeadbeef;
        b = 0xadbeef;
        b++;
    }
}
contract O {
    mapping(address=>uint) public y;
    address public addressof1;
    function f() public {
        uint a;
        a = y[addressof1];
        a = y[addressof1];
    }
    function g() public {
        uint a;
        a = 1;
        a = 1;
        a = addressof1;
        addressof1 = a;
        addressof1 = a;
    }
    function h() public {
        uint a;
        a = a;
        a = 1;
        a = addressof1;
        addressof1 = a;
        addressof1 = 0x00;
        addressof1 = addressof1;
        addressof1 = 0x00;
    }
}
contract O {
    string public a;
    uint public a2;
    uint public a3;
    uint public a4;

    uint public a5;
    uint public a6;
    uint public a7;
    uint public a8;
    mapping (uint=> uint) public a9;
    uint public a10;
    mapping (uint=> address) public a11;

    mapping (uint=>bool) public boolarray;
    mapping (uint=>bool) public boolarray1;

    uint public a15;
    uint public a16;
    uint public a17;
    uint public a18;
    uint public a19;

    uint public a48;
    uint public a53;
    uint public a89;
    uint public a35;
    uint public a47;
    uint public a54;

    mapping () public c;

    uint public a42_uint
