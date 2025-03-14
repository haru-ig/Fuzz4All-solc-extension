pragma solidity ^0.8.0;
contract MutatedDynamicArrays4 {
    uint256[10] public x = [1,2,3,4,5,6,7,8,9,10];
    function modify() public {
        uint256 _tx = x[3] + 1;
        x[3] = _tx;
    }
}
