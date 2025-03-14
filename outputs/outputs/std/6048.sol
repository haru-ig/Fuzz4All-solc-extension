pragma solidity ^0.8.0;
contract Memory is IMemory {
    bytes memory _data = "Hello from Solidity";

    function store(address addr, bytes memory data) public {
        _data = bytes(data);
        IMemory(addr).store(addr, data);
    }

    function get(address addr) public view returns (bytes memory data) {
        data = _data;
        IMemory(addr).store(addr, data);
    }
}
