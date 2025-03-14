pragma solidity ^0.8.0;
contract D {
    uint256 private _x;
    address private _address;

    constructor() {
        _address = 0x00000000000000000000000000000000000000;
        _x = 100;
    }

    function add(uint32 y) public pure {
        if (y >= _x) {
            revert();
        }
    }

    function mul(uint256 x) public pure {
        if (x >=_x) {
            revert();
        }
    }
}
contract E {
    uint32 private _x;

    constructor() {
        _x = 1;
    }

    modifier test() {
        if (_x == 1) {revert(); }
    }
}
contract F {}
