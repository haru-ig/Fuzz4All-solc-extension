pragma solidity ^0.8.0;
contract C {
    mapping (uint => mapping (uint => uint)) mapping3;
    function add(uint _a, uint _b) public pure returns (uint) {
        return _a + _b;
    }
    function set(uint _a, uint _b, uint _c) public {
        mapping3[_a][_b] = add(_c, add(_a, _b));
    }
}
