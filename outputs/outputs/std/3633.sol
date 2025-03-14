pragma solidity ^0.8.0;
contract Mutate {
    constructor(address _initialValue) {
        arrayOfBytes_current = _initialValue;
    }
    function MutatedFunction() public {
        mappingOfAddressToUint[msg.sender] = 71;
    }
}
