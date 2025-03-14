pragma solidity ^0.8.0;
contract Counter {
    uint public i;
    function increment() public {
        i += 1;
    }
    event Incremented(uint indexed _i);
}
#pragma abicheck passes

compileWith("inline")
