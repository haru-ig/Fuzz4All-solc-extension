pragma solidity ^0.8.0;
contract ArraysMutated2 {
    uint public counter;
    function mutated() public {
        if (counter ++ >=10000){
            revert("Counter Overflow");
        }
    }
    function decrement() public {
        counter -= 42;
    }
}
