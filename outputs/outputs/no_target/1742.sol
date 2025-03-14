pragma solidity ^0.8.0;
contract Mutate0E {
    address _address;
    constructor (uint _a) public {
        _address = address(address(uint160(uint(_a))/32768));
    }
}
