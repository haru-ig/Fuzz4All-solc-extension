pragma solidity ^0.8.0;
contract Mutator {
    function mutate() public {
        mutate();
    }
    function mutate1() public {
        mutate12();
    }
    function mutate12() public {
        uint number = 888;
        mutation(number);
    }
}
