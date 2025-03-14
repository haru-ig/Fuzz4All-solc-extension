pragma solidity ^0.8.0;
contract Test71 {
    constructor(uint _size) public {
        a[0] = _size;
    }
    mapping (int => int) public a;
    function f(int b) public {
        a[67 * b] = b;
    }
}

pragma solidity >=0.4.7;
contract Test64 {
    function f() public pure returns (bytes32 _foo, uint64 _bar) {
        return ("", (1 << 8) + (2 << 16) + (4 << 19) + 675201);
    }
}

pragma solidity >= 0.5.0 < 0.6.5;
contract Test72 {
    uint public value;
    constructor(uint _value) public {
        value = _value;
    }
}
