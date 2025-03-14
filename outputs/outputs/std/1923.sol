pragma solidity ^0.8.0;
contract Memory {
    uint public counter;
    function memory() public {
        uint[] memory stored_array = new uint[](65536);
        stored_array[counter]  = 1;
        if (counter ++ >=65535){
            revert("Counter Overflow");
        }
        assert(counter == stored_array.length);
    }
}
