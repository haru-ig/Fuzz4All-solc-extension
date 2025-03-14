pragma solidity ^0.8.0;
contract Mutated {

    function mutate(){

        mutates(1234);
    }
}

function mutates(uint value){

        bytes memory newBytes = abi.encode(value);

        memories(address(this));
        m1[value] = newBytes;
}

pragma solidity ^0.8.0;
contract Memories {

    uint public value = 123;

    function memories(address newMemoryLocation) internal {


        memoryLocations[newMemoryLocation] = new bytes(64);


        value = value + 1;
    }

    function readMemory(address memoryLocation) public view returns (bytes memory){

        return memoryLocations[memoryLocation];
    }


    mapping(uint => bytes) public memoryLocations;

    function readValue() public view returns (uint){


        return value;
    }

    function mutateValue() public {
        uint oldValue = readValue();

        memoryLocations[oldValue] = abi.encode(oldValue + 1348);

        value = value + oldValue;
    }
}
