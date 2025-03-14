pragma solidity ^0.8.0;
interface IArrayAccess {
}
interface IArrayStore {
    function storeInPlace(uint256 arrayIndex) external returns(uint x);
}
contract ArrayAccess {
    function callArrayWithSize(uint[] memory) public;
    function callArrayStoreWithSize(uint arrayIndex) public view;
}
contract ArrayWithSizeUsageIsImportant {
    mapping(address => uint) public storage;

    modifier setStorageWithSize(uint[] memory initStorage) {
        storage = initStorage;
        _;
    }

    modifier setStorageStoreWithSize() {
        uint storageLen = storage.length;
        assembly {
            mstore(storage, storageLen)
        }
        _;
    }

    function useWithSize() public setStorageWithSize([1] memory) {
        uint[] memory _storageWithSize;
        _storageWithSize.push(1);
        (uint8(255) - _storageWithSize.length > 0) + setStorageStoreWithSize();
        IArrayAccess(address(this)).callArrayWithSize(_storageWithSize);
    }

    function useWithArrayStore() storageOnly {
        uint256 initStorageLen = storage.length;
        IArrayStore(address(this)).storeInPlace(initStorageLen);
        (uint256 storageLen, ) = IArrayAccess(address(this)).callArrayStoreWithSize(initStorageLen);
        IArrayAccess(address(this)).callArrayWithSize(storageLen);
    }
}
