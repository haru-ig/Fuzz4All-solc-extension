pragma solidity ^0.8.0;
contract Emulator9 {
    struct Foo {
        mapping (bytes32 => bytes32) map;
        mapping (address => mapping (uint => uint)) _map;
    }
    uint x;
    mapping(bytes32 => bytes32) greetings;
    mapping (address => uint) public balanceOf;
    mapping (address => uint) public _allowances;
    function init() public {
        x = 1231;
        greetings[bytes32("Hello world")] = bytes32('Hello world');
    }
    function map_writeKey(bytes32 key) public {
        map[key] = bytes32(234);
    }
    function map_write_addressKey(address key) public {
        _map[key][1] = 123;
    }
    function increase() public {
        _map[msg.sender][0] = _map[msg.sender][0] + 1;
    }
    function write(bytes32 key) public {
        greetings[key] = bytes32();
    }
    function getBalance(address addr) public view returns (uint) {
        return balanceOf[addr];
    }
    function allowance(address addr1, address addr2) public view returns (uint) {
        return _allowances[addr1][addr2];
    }
    function balance1() public view returns (uint) {
        return x+1;
    }
}
