pragma solidity ^0.8.0;

contract ConstantAccessBlock7Mutator {
    bool _var;
    mapping(uint256 => bool) storage _data;
    constructor() {
        _var = true;
    }

    function test() public returns (bool) {
        uint x = 1;
        uint y1 = 2;
        uint y2 = y1++;
        uint y3 = 5;
        uint y4 = 7;
        uint y5 = 3;
        assembly {
            x := add(x, y4)
            x := add(x, y5)
        }
        return _var;
    }

    function set(uint256 key, bool data) public returns (bool) {
        _data[key] = data;
        return true;
    }

    function get(uint256 key) public pure returns (bool) {
        return _data[key];
    }
}
