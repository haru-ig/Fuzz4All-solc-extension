pragma solidity ^0.8.0;
contract A {
    uint _a = 0;
    uint _b = 3;
    void a() public constant { _a += _b; }
    function b() public payable { _b += 1000; }

    function c() public { a(); b(); }
}
