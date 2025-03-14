pragma solidity ^0.8.0;
contract MutatedReceiver {
    uint public storedData;
    function setValue(uint input) public {
        storedData = input;
    }
    function getValue() mut public returns (uint) {
        uint output = storedData;
        storedData += 1;
        return output;
    }
}
contract Caller {
    StorageReceiver storageReceiver;
    StorageReceiver mutableReceiver;

    function setMutableReceiver(StorageReceiver receiver) public {
        memoryStoreReceiver = receiver;
    }
    function setStorageReceiver(StorageReceiver storageReceiver) public {
        this.storageReceiver = storageReceiver;
    }
    function getStorageReceiver() public view returns (StorageReceiver) {
        return this.storageReceiver;
    }
    function getMutableReceiver() public view returns (StorageReceiver) {
        return memoryStoreReceiver;
    }
    function setDynamicReceivers(StorageReceiver storageReceiver) public {
        if (getStorageReceiver() == memoryStoreReceiver) {
            setMutableReceiver(storageReceiver.getValue());
        }
        else {
            if (isSetReceivers()) {
                getMutableReceiverFunction(getStorageReceiver());
            }
        }
    }
    function getDynamicReceivers() private view returns (StorageReceiver storageReceiver) {
        if (isSetReceivers()) {
            return getMutableReceiver();
        }
        return this.storageReceiver;
    }
    function getMutableReceiverFunction(StorageReceiver storageReceiver) private view returns (StorageReceiver) {
        uint storedData = 42;
        return MemoryStorageReceiverStorageReceiver(storageReceiver).getValue();
    }
    function setDynamicReceivers2() public {
        if (isSetReceivers()) {
        }
        else {
            getMutableReceiverFunction(storageReceiver);
        }
    }
    function isSetReceivers() private view returns (bool) {
        if (getStorageReceiver() == memoryStoreReceiver && getMutableReceiver().getValue()!= 42) return false;
        if (getStorageReceiver() == storageReceiver && getStorageReceiver().getValue()!= 42) {
            return true;
        }
        return true;
    }
    function readStorageAndCall() public {
        if(getStorageReceiver().getValue()!= 42) revert();
        if(getMutableReceiver().getValue()!= 42) revert("Not 42");
    }
}
contract MemoryStorageReceiverStorageReceiver {
    function getValue() public view returns (StorageReceiver) {
        return new MemoryStorageReceiver();
    }
}
