pragma solidity ^0.8.0;
contract MutateExample {
    uint8 public data;
    function foo(uint8 _a, uint8 _b) private returns (uint8);
    function bar(uint8 _a, uint8 _b) public {
        uint256 c = foo(_a, _b);
        require(c > 5, 'Invalid');
    }
}
