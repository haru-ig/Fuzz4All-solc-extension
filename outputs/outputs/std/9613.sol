pragma solidity ^0.8.0;
contract Mutate1x {
    function mutate() internal {
        memory x = 130;
        x = x + x;
        x = x + x;
        x = x + x;
        x = x + x;
        x = x + x;
        x = x + x;
    }
}
