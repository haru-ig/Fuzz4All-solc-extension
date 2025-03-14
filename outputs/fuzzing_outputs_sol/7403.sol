pragma solidity ^0.8.0;
contract MutateExample {
    uint8 public data;
    function set(uint8 _data) public {
        data = _data;
    }
    function get() public pure returns (uint8) {
        return data;
    }
    function foo(uint8 _a, uint8 _b) pure internal returns (uint256) {
        uint8 d = data;
        return uint8((d + _a * 5) / _b) + 1;
    }
    function bar(uint8 _a, uint8 _b) public {
        uint256 c = foo(_a, _b);
        require(c > 5, 'Invalid');
    }
}
