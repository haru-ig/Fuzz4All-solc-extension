pragma solidity ^0.8.0;
contract G9d {
    uint[2] private arr;
    uint32 private c;
    function g() public returns(uint256){
        if (c == 0) {
            c = 1;
            arr[1] = arr[0];
        }
        return arr[1];
    }
}
