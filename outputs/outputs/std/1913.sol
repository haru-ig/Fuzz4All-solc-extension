pragma solidity ^0.8.0;
contract ArraysMutated {
    uint public counter;
    function mutated() public {
        uint stored_counter = counter;
        if (counter ++ >=65535){
            revert("Counter Overflow 2");
        }
        assert(counter == stored_counter);
    }
}
