pragma solidity ^0.8.0;
contract second2 {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    function second2() public {
        a = b * 8;
        b = b / 4;
        c = a % 2;
    }
}
contract second3 {
    uint public a;
    uint public b;
    uint public c;
    uint public d;
    uint public e;
    function second3() public {
        a = a / 2;
    }
}
