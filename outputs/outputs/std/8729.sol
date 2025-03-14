pragma solidity ^0.8.0;
contract MutatedContract
{
    Example[] public data;
    mut Example[] public immutable mutableData;
    address payable _address1;
    address payable _address2;
    bytes1 _byte;
    uint8 _u8;
    uint16 _u16;
    uint32 _u32;
    uint64 _u64;
    uint128 _u128;
    bytes32 _bytes32;
    Example storage dataStored;
    Example storage mutableDataStored;

    function store(address payable address1, address payable address2, bytes memory byte, uint8 u8, uint16 u16, uint32 u32, uint64 u64, uint128 u128, bytes32 bytes32) public {
        data.push(Example(address1, address2, byte, u8, u16, u32, u64, u128, bytes32));
        dataStored = data.push().item1;
        mutableData.push(Example(address1, address2, byte, u8, u16, u32, u64, u128, bytes32));
        mutableDataStored = data.push().item1;
    }
}

pragma solidity ^0.8.0;
contract DeterministicContract
{
    uint256 counter;

    function mutateCounter() public{
        counter++;
    }

    function checkMaximalCounter(uint256 expectedValue) public view returns (uint256){
        require(counter == expectedValue);
        return counter;
    }
}
