pragma solidity ^0.8.0;
contract D {
    uint z = 0;
    uint public x;
    uint public ky;
    uint public w;
    uint public zy;
    constructor() public {
        z = 3;
        x = 3 * z + x / 4;
        w = x;
    }
}
address admin = 0x1;
contract C {
    constructor() public {
        admin = msg.sender;
    }
    modifier only_test_modifier() {
       require(msg.sender == admin);
       _;
    }
    function() external payable {
        admin.transfer(msg.value);
    }
    function test1() public view returns(uint) {
        return x;
    }
    function test2() public view returns(address) {
        return msg.sender;
    }
    function test3() public view returns(bytes memory) {
        return (abi.encodeWithSignature("test(uint, bytes)", (x * w / z), msg.data));
    }
    function test4() public returns(bool, address, bytes memory) {
        bool a = false;
        address b = 0x2;
        bytes memory c = bytes(abi.encodeWithSignature("test(uint, bytes)", (x * z / 4), msg.data));
        return (a, b, c);
    }
    function test5() public only_test_modifier returns(uint) {
        return 2;
    }
}
