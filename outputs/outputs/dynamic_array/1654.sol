pragma solidity ^0.8.0;
contract MutatedDynamicArrays6 {
    uint256[4] y = [1,2,3,4,5,6,7] ;
    function modify(uint256 _y) public {
        delete y[1];
        _y = 13;
    }
}
