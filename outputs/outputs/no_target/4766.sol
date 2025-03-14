pragma solidity ^0.8.0;
contract C {
address internal a;
assembly { a := 0x5d99b0d270000000000000000000000000000000000000000000000000002; }
require(true);
}
