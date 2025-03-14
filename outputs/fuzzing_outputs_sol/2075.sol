pragma solidity ^0.8.0;
contract Mutator {
    constructor(Mutater4 _mutater4) {
        Mutater4Storage storage mutater4Storage = Mutater4Storage(Mutater4Storage_Slot.slot0);
        mutater4Storage.contractAddress = _mutater4.getContractAddress();
        Mutater4Storage storage mutater4Storage_1 = Mutater4Storage(Mutater4Storage_Slot.slot1);
        mutater4Storage_1.setCallAddress(_mutater4.getCallAddress());
        Mutater4Storage storage mutater4Storage_2 = Mutater4Storage(Mutater4Storage_Slot.slot2);
        mutater4Storage_2.setCallResult(_mutater4.getCallResult());
    }
    function getMutater4Storage(uint slot) public view returns (Mutater4Storage) {
        return Mutater4Storage(Mutater4Storage_Slot(slot));
    }
    function setMutater4Storage(uint slot, Mutater4Storage _storage) public {
        Mutater4StorageStorage storage mutater4StorageStorage = Mutater4StorageStorage(Mutater4StorageStorage_Slot(slot));
        mutater4StorageStorage.setContractAddress(_storage.contractAddress);
    }
    uint public constant Mutater4Storage_Slot = 1;
    Mutater4Storage public constant _mutater4Storage = Mutater4Storage(Mutater4Storage_Slot);
    uint public constant Mutater4StorageStorage_Slot = 2;
    Mutater4StorageStorage public constant _mutater4StorageStorage = Mutater4StorageStorage(Mutater4StorageStorage_Slot);
}
