pragma solidity ^0.8.0;

contract Mutate3 {
    uint256 private x;

    constructor () {
        x = 25;
    }


    function set(uint256 _x) external {
        x = _x;
    }


    function get() public view returns(uint256) {
        return x;
    }
}
