pragma solidity ^0.8.0;
contract Counter {
    uint internal current;
    mapping(address => uint) internal storageToTrack;
    function setNewCurrent(uint value) public {
        uint oldValue = current;
        storageToTrack[self] = oldValue;
        storageToTrack[tx.origin] += value;
        storageToTrack[tx.origin] -= oldValue;
        storageToTrack[address(this)] += value;
        storageToTrack[address(this)] -= oldValue;
        storageToTrack[new address() ] += value;
        storageToTrack[new address() ] -= oldValue;
        storageToTrack[0x00] += value;
        storageToTrack[0x00] -= oldValue;
        current = value;
    }
}
