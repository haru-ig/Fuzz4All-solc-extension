pragma solidity ^0.8.0;
uint256 public d = 20000000000;
address payable public a = msg.sender;
bool public initialized = true;
uint32[10] public c;
uint256 public i = 0;
constructor() {
    d = 20000000000;
    a = msg.sender;
    initialized = true;
}
function doThat() public {
    if (initialized) {
        c[i] = c[i] - 1;
        d = d * d;
        a = msg.sender;
        initialized = true;
        i = i + 1;
    } else {
        initialized = true;
    }
}
