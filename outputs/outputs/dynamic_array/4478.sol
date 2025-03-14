pragma solidity ^0.8.0;
contract MutatedWithPrevious { function testPrevious() public returns (bytes[100] memory) {
} }

pragma solidity ^0.8.0;
contract MutatedWithPrevious { function test() public {
address mut x = address(uint160(1000));
x[0] = x[0];
} }
