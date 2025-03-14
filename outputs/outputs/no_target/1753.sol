pragma solidity ^0.8.0;
contract Mutate1E {
    address payable _address;
    constructor (uint _a) public {
        _address = address(uint160(uint(_a))/32768 ether);
    }
}
