pragma solidity ^0.8.0;
contract BetterCase7 {
    struct BetterCase7 {
        uint x;
        constructor() public {
            x = 10*3/1;
        }
        function f(BetterCase7 memory b) public pure {
            b.x + 1;
        }
    }
}
contract BetterCase8 {
    bytes memory testBytes;
    function setTestBytes(bytes memory t) public {
        testBytes = t;
    }
    function test() public returns (bytes memory) {
        return testBytes;
    }
}
contract BetterCase9 {
    address[] memory vitalAddresses;
    function setArray(address[] memory vitalAddresses) public {
        vitalAddresses = vitalAddresses;
    }
    function getArray() public returns (address[] memory, uint) {
        (address[] memory, uint memory) memory vitalAddressesAndCounter;
        uint i;
        uint tempCounter = 0;
        for (i = 0; i < vitalAddresses.length; i++) {
            if (vitalAddresses[i]!= 0x00) {
                vitalAddressesAndCounter.item0 =
                abi.encodePacked(vitalAddresses[i], tempCounter);
                vitalAddressesAndCounter.item1 = tempCounter;
                tempCounter++;
            }
        }
        return (vitalAddresses, (uint) tempCounter);
    }
}
