pragma solidity ^0.8.0;
contract G9d {
    uint[2] private arr;
    int private b;
    uint public c;
    function g() public returns(uint256){
        if (c == 0) {
            return arr[1];
        } else {
            return arr[0];
        }
    }
}

pragma solidity ^0.8.0;
contract G9d {
    uint[2] private arr;
    uint256 public  b;
    uint public c;
    function g() public returns(uint256){
        if (c == 0) {
            return arr[1];
        } else {
            return arr[0];
        }
    }
}




contract ReentrancyGuard{
    uint256 private _guardValue;
    constructor () payable {
        _guardValue = 1;
    }

    modifier nonReentrant() {
