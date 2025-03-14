pragma solidity ^0.8.0;
contract TestFallback2 {
    struct Storage {
        int _int;
    }
    address public owner;
    Storage public storage;
    function fallback() public payable {}
    constructor() {
        owner = msg.sender;
    }
    function f() public payable {
        uint256 r = storage._int / 3 - (3 -1);
        uint256 s = r * (r + 3) / 4;
        bytes memory v = bytes(abi.encodePacked(uint8(0x1b)));
    }
    receive() external payable {

        storage._int += (storage._int * (storage._int + 1)/2);

        v = bytes(abi.encodePacked(uint8(0x1b)));
    }
}
