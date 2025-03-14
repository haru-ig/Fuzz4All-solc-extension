pragma solidity ^0.8.0;
contract MutateExample {
    uint8 public data;
    mapping(uint8 => uint8) public foo;
    mapping(uint1 => bytes32) public bar;
    constructor() {foo[5] = 1;}
    function set(uint8 _data) public {
        data = _data;
    }
    function get() public view returns (uint8) {
        return data;
    }
    function foo(uint8 _a) private view returns (uint256) {
        uint8 d = data;
        return uint8((d + _a * 5) / 6) + 1;
    }
    function bar(uint1 _a, bytes32 _b) public {
        uint256 c = foo(_a);
        require(c[0] > 6, 'Invalid');
        bar[_a] = _b;
    }
}
