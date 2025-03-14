pragma solidity ^0.8.0;
contract Emitter {
    uint x = 1;
    function emulate() public returns (uint) {
        x = 2;
        emit event(x, "success");
        emit event2(0, "error");
        return x;
    }
    event event1(uint, string);
    event2(uint32, string);
}
contract Emulator4 {
    uint x;
    uint[] mem;
    function update(uint i) public returns (string memory) {
        mem[i] = x;
        return "success";
    }
    uint[] mem2;
    function update2(uint i) public returns (uint) {
        mem2[i] = x;
        return mem[0];
    }
}
contract Emitter2 {
    uint x = 2;
    function emulate() public returns (uint) {
        x = 2;
        emit event1(x);
        emit event1(1, "a");
        return x;
    }
    event1(uint);
}
