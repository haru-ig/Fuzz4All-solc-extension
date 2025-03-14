pragma solidity ^0.8.0;
contract Mutant1FallbackFunction3 {
    uint public constant constantNumber = 1;
    function mutantSetFallbackFunction() public pure returns (uint) {
       throw -1;
    }
}

pragma solidity ^0.8.0;
contract Mutant1LowLevelCall1 {
    bytes32 public constant mutantAddress = keccak256(abi.encodePacked(this));
    mapping(bytes32 => uint) private _dataStore;
    uint public value;
    function mutantFallback(uint _amount) public {
       require(address(this).balance == _amount, "Must own the contract's underlying balance in fallback");
       uint to = uint(msg.value) * constantNumber;
       uint from = _amount * constantNumber;
       _dataStore.storeBytes(mutantAddress, from);
       uint storagePosition = _dataStore.getStoragePosition(mutantAddress);
       _dataStore[mutantAddress] = storagePosition;
       _dataStore.storeUint(to, storagePosition);
    }
}

interface DataStore {
    function storeBytes(bytes32, bytes memory) returns (uint);
    function getStoragePosition(bytes32) external view returns (uint);
    function storeUint(uint, uint) returns (uint);
}
