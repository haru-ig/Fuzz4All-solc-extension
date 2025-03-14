pragma solidity ^0.8.0;
contract Arrays {
    uint public counter;
    function array() public {
        uint[] memory stored_array = new uint[](65536);
        if (counter ++ >=65535){
            revert("Counter Overflow");
        }
        assert(counter == stored_array.length);
    }
}
