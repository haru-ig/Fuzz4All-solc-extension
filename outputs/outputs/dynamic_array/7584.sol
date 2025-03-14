pragma solidity ^0.8.0;
contract Test20 {
    uint[] internal b;
    uint a;
    uint public B;
    uint public C;
    uint public D;
    event D1(uint d);
    constructor () public {
        b = new uint[](1);
    }
    function f() public view returns (uint[] memory v) {
        v = b;
        v.push(42);
        a = 42;
    }
    function a() public {
        emit D1(A);
    }
}
