pragma solidity ^0.8.0;
contract G9e{
    uint256 private arr2 ;
    function g() public returns(uint256 arr){
        if (arr2 == 0) {
            arr2 = 1;
            arr[1] = arr[0];
        }
        return arr[1];
    }
}
