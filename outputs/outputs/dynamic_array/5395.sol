pragma solidity ^0.8.0;
contract Test17 {
    uint public v, w;

    function mutated() public {
        v;
        v = 0;
    }
}
