pragma solidity ^0.8.0;
contract MutatingContract is MutatingContract {
    uint a = 0x2;
    function mutate() public {
        a = -1;
    }
}
