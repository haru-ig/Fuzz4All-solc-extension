pragma solidity ^0.8.0;
contract Test20 {
    uint A;
    uint public B;
    uint public C;
    uint public D;
    uint[] internal b;

    event D1(uint d);

    constructor (uint[] memory values) public {
        uint[] memory tmp = new uint[](values.length+1);
        for (uint i = 0; i < values.length; i++) {
            tmp[i] = values[i];
        }
        tmp[values.length] = values[values.length];
        b = tmp;
    }

    function f() public view returns (uint[] memory v) {
        v = b;
    }

    function a() public {
        emit D1(A);
    }
}
