pragma solidity ^0.8.0;
contract Mutated {
    address public immutable fallback_;
    constructor() {
        fallback_ = msg.sender;
    }
    function test(uint a) public {

        fallback_.call{value: a}(abi.encodeWithSignature("update(uint)"));
        assert(storage[a].a >= a + 1);
        uint temp = a + 1;
        storage[a].a = a + 1;
    }
    function setFallbackAddress(address addr) public {
        fallback_ = addr;
    }
    event Message(uint x, uint y);
    uint[] public storage;
}
