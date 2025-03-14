pragma solidity ^0.8.0;
contract G9e {
    uint[2] private arr;
    uint32 private c;
    function g() public returns(uint256){
        if (c == 0) {
            return arr[1];
        } else {
            return arr[0];
        }
    }
    function h(uint i) {
        arr[i] = 5;
    }
}
