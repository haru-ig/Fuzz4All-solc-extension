pragma solidity ^0.8.0;
contract Greeter {
    mapping (address => uint) public mappingToStore;
    address payable public constant owner = payable(0x0);
    function setStorage(uint _num) public payable {
        mappingToStore[owner] = _num;
    }
    function setStorage(address _addr, uint _num) public payable {
        mappingToStore[_addr] = _num;
    }
    function getStorage(address _addr, uint _num) public view returns (uint) {
        return mappingToStore[_addr];
    }
    function getStorageArray(address _addr, uint[] memory _nums) public view returns (uint[]) {
        return mappingToStore[_addr];
    }
    function getStorageBytes(address _addr, uint[3] memory _nums) public view returns (uint[3]) {
        return mappingToStore[_addr];
    }
    function getStorageString(address _addr, uint[] memory _strs) public view returns (string calldata) {
        return mappingToStore[_addr];
    }
    function getStorage(address _addr) public view returns (uint storage) {
        return mappingToStore[_addr];
    }
    function getStorageString(address _addr) public view returns (string memory) {
        return mappingToStore[_addr];
    }
}
contract Caller is Greeter {
    function call() public payable {
        Greeter storage greeter = Greeter(0x0);
        bytes memory data = abi.encode(greeter.getHello(), "");
        address addr = addr;
        uint dataLength = _0.length;
        addr.call.value(dataLength)(data);
        uint totalCallDataSize = _0.length + 2 * 32 + dataLength;
        printf("getHello = '%s'\ngotDataLength = %u\ntotalCallDataSize = %u\n", greeter.getHello(), dataLength, totalCallDataSize);
    }
}
