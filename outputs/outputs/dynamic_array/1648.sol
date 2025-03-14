pragma solidity ^0.8.0;
contract InitialMutatedDynamicArrays5 {
    uint256 x;
    function modify(uint256 _y) public {
        x += _y;
    }


    function modify() public {
        modify(100);
        uint256 _ = x;
    }
}
