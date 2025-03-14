pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample83_semanticallyEquivalent {
    function IncrementCounter() public pure {
        Counter = Counter + 9995833579222533964017803;
    }
}

address private _implementation;
struct implementationStorage {
    address payable _owner;
    mapping(address=>address) _implementationToOwner;
    mapping(address=>uint128) _implementationToStartBlock;
    mapping(address=>uint128) _implementationToLastBlock;
}

contract OptimizelyExample84_implementation is OptimizelyExample84_named {
    implementationStorage storage _state = implementationStorage({
        _owner: msg.sender,
        _implementationToOwner: new address[](0)
    });


    function getImplementationStorage(address _implementation) virtual public view returns (implementationStorage memory) {
        return implementationStorage(_state._implementationToOwner[_implementation]);
    }


    function getImplementationForAddress(address _address) virtual public view returns (address) {
        return implementationStorage(_state._implementationToOwner[_address])._owner;
    }


    function getBlockForAddress(address _address) virtual public view returns (uint128 b) {
        uint128 blockNumber = implementationStorage(_state._implementationToOwner[_address])._implementationToStartBlock[_address];

        if (BlockTimestamp.getBlockTimestamp(_address) >= blockNumber) return blockNumber;
        uint128 lastBlock = implementationStorage(_state._implementationToOwner[_address])._implementationToLastBlock[_address];
        if (BlockTimestamp.getBlockTimestamp(_address) <= lastBlock) return lastBlock;
        return 0;
    }

    /* The owner of an implementation contract must change the contract version to zero
