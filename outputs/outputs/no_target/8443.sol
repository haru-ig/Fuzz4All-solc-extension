pragma solidity ^0.8.0;
contract Safe {
    uint256 public x = 7;
    constructor (uint128 _y) public {
        x *= 10; _y /= 5; x -= _y;
    }
}
contract Unsafe {
    address payable addr;
    constructor (address _addr) public {
        addr = _addr;
    }
    function get() public view
        returns (uint128) {
        return x; }
}
