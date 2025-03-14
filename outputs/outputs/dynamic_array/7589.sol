pragma solidity ^0.8.0;
contract Test20 {
    uint A;
    uint public B;
    uint public C;
    uint public D;
    uint[] internal b;
    event D1(uint d);
    constructor (uint[] memory values) public {
        b = values;
    }
    function f() public view returns (uint[] memory) {
        return b;
    }
    function a() public {
        emit D1(A);
    }
}
