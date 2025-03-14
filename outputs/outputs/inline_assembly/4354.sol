pragma solidity ^0.8.0;
contract SolidityExample {
    uint _a;
    uint _b;

    constructor(uint A) public {
        _a = A + 1;
    }

    function a() public view returns (uint) { return _a; }

    function b() public returns (uint) { return _b; }
    function modify(address Sender) public {
        uint old = uint(f[Sender]);
        old = old + 1000;
        f[Sender] = old;
        _b = 4;
    }

}
