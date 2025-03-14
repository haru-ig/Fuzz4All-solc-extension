pragma solidity ^0.8.0;
contract Mutate0016 {
    address _address;
    mapping (address => uint256) _counts;
    constructor () public {
        _address = address(uint160(uint(msg.sender)));
        _counts[_address] = 0;
    }
}
