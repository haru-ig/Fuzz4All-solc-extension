pragma solidity ^0.8.0;
contract Test21 {
    uint[] b;
    uint[] internal c;
    uint internal d;
    constructor (uint[] memory values) public {
        b = values;
        c = values;
        d = values[0];
    }
    function f() public view returns (uint[] memory res) {
        res = c;
        c = b;
    }
    function g() public returns (uint[] memory res) {
        res = c;
        return c;
    }
    event C1(uint d);
    event C2(uint d);
}
