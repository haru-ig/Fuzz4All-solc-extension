pragma solidity ^0.8.0;
contract MutatedDynamicArrays6 {
    MutatedDynamicArrays5 x;

    function MutatedDynamicArrays5_new(uint256 _y) public {
        x.modify(_y);
    }
}
