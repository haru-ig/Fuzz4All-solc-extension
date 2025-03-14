pragma solidity ^0.8.0;
contract Semantic {
    Semantic struct memory;
    function mutate() public pure {
        memory.x ^= memory.x;
    }
}
