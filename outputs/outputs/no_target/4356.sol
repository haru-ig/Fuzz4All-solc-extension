pragma solidity ^0.8.0;
contract C {
    constructor() public { }
    string private name;
    constructor (string memory _name) public {
        name = _name;
    }
    string public toString() public returns (string memory) {
        return name;
    }
}
contract D is C {
    function g() public returns (uint256) {
        return 2;
    }
}
contract E is C, D {
    constructor ( C memory c, D memory d) public C() {
        constructor();
    }

    function g(uint8 y) public returns (uint8) {
        uint8 i = C.toString();
        uint8 j = d.toString();
        uint8 k = A().toString();
        i = 1048576;
        return 2 + u8(10) + u8(j) + u8(uint8(5));
        return a - 100;
    }

    function u8(uint8 _x) public pure returns (uint8) {
      return _x;
    }

    function A () public pure returns (address storage) {
    return A;
    }

}
