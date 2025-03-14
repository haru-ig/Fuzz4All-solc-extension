pragma solidity ^0.8.0;
contract ArraysFixed {
    uint public counter;
    function fixed() public {
        uint stored_counter = counter;
        if (counter ++ >=65535){
            revert("Counter Overflow");
        }
        assert(counter == stored_counter);
    }
}
