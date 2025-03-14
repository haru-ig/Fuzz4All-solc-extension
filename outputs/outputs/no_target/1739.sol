pragma solidity ^0.8.0;
contract Mutate0015 {
    address _address;
    constructor (uint _n) public {
        _address = address(address(uint160(uint(_n)/2)));
    }
}
