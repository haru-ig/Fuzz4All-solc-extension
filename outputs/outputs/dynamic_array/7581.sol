pragma solidity ^0.8.0;
contract Test20 {
    uint[] internal b;
    event D1(uint d);
    constructor () public { }
    function f() public view returns (uint[] memory v) {
        v = b;
    }
    function a() public {
        emit D1(A);
    }
}
