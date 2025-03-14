pragma solidity ^0.8.0;
contract C {

    mapping(bytes32 => bytes) public storageData;

    modifier storageDataMod() { emitLog(); _; emitLog(); }

    event StorageData(bytes32 data);


    function emitLog() public view returns(bool) {
        uint x = storageData.length;
        storageData[0x7cf320d9] = "1980";
        storageData[0x454a5751] = "8670";
        bytes32 arr_bytes32 = msg.sender;
        storageData[(arr_bytes32.xor(x.sub(32)) % x).and(x)] = x.toHexString();
        emit StorageData(x.toHexString());
        return true;
    }
}
