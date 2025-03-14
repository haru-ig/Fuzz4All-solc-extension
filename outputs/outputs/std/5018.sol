pragma solidity ^0.8.0;
contract Memoize {
    constructor (uint256 x) public {
        arr.push(x);
    }

    function get(uint256 elem) view public returns(uint256) {
        return arr[elem];
    }
}
