pragma solidity ^0.8.0;
contract ArraysMutated2 {
    uint public counter;
    function mutated() public {
        if (counter ++ >=65535){
            raise("Counter Overflow 2");
        }
    }
}
