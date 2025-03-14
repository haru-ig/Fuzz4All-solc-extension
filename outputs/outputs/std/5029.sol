pragma solidity ^0.8.0;
contract Sevendx {

    constructor(uint256[] memory _arr) public {
        for (uint256 i=0; i <= _arr.length-1; i++) {
            arr[i] = _arr[i];
        }
    }
    function add(uint256 x, uint256 y) public pure returns(uint256 result) {
        if (x > 0)
            result = x + y;
    }
}
