pragma solidity ^0.8.0;
contract MutateExample {
    uint8 public data;
    function set(uint8 _data) internal {
        data = _data;
    }
    function get() public view returns (uint8) {
        return data;
    }
    function foo(uint8 _a, uint8 _b) private returns (uint256) {
        uint8 d = data;
        return uint8((d + _a * 5) / _b);
    }
    function bar(uint8 _a, uint8 _b) public {
        uint256 c = foo(_a, _b);
        require(c == 10, 'Invalid');
    }
}
contract Caller is MutateExample {
    function bar() public payable {
        uint256 c = foo(10, 5);
        require(c == 15, 'Invalid 1');
    }
}
