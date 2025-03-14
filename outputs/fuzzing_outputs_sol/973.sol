pragma solidity ^0.8.0;
contract Caller {
    receive() external payable {}
    address payable fallback();
    constructor (address payable _fallback) public {
        fallback = _fallback;
    }
}
