pragma solidity ^0.8.0;
contract MutationTester {
    function test1() public {
        MutatedBytes memory testBytes = new MutatedBytes;
        testBytes.arrayOfBytes_current = "49";
        mappingOfAddressToUint[msg.sender] = mappingOfAddressToUint[msg.sender] + 1;
        mappingOfAddressToUint[msg.sender] = mappingOfAddressToUint[msg.sender] * 2;
        mappingOfAddressToUint[msg.sender] = mappingOfAddressToUint[msg.sender] / 2;
        mappingOfAddressToUint[msg.sender] = msg.value;
        mappingOfAddressToBoolean[msg.sender] = true;
    }
}
