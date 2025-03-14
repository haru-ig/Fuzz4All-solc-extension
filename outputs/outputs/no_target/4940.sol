pragma solidity ^0.8.0;
contract C { function f(address a) public pure { bool x = false; unchecked { } } }
[Truncated]


function f() public view returns (uint160) {
    bool a;
    uint8 b;
    uint16 c;
    bytes16 d;
    address e;
    address f;
    bytes20 g;
    bytes32 h;
    bytes4 i;
    address j;
}
```
<issue_comment>username_1: I would remove the 1 - 128 bit integer type and replace with uint16.
<issue_comment>username_2: Yeah we should use a single uint, but only use `uint16` if that's 2^158-1 bytes<issue_closed>
