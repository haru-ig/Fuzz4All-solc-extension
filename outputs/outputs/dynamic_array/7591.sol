pragma solidity ^0.8.0;
contract Test21 {
    uint [] public a;
    uint[] b;
    uint public c;
    uint public d;
    constructor (uint[] memory values) public {
        b = values;
        c = values.length;
        d = values.length + 1;
        a = values;
    }
    function f() public view returns (uint[] memory) {
        return b;
    }
}
