pragma solidity ^0.8.0;
contract Arrays {
    uint[] memory stored_array;
    uint public counter;
    function append() public {
        if (counter++ >= stored_array.length){
            stored_array = new uint[](counter + 1);
        }
        assert(counter == stored_array.length);
    }
}
