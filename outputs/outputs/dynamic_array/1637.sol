pragma solidity ^0.8.0;
contract MutatedDynamicArrays {
    uint256 x = 1;
    uint256 y;
    function modify() public {
        uint256 _tx = x + y;
        x = _tx;
        y = 10;
    }
}
