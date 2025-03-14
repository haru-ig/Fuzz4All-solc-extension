pragma solidity ^0.8.0;
contract ConstantAccessBlock3Mutator2 {
    uint public constant _var = 1;
    mapping (uint => uint) internal block_changes;
    constructor() {
    }
    function test() public view returns(uint) {
        uint x = 0x12345678;
        uint y = 0;
        uint z = 1;
        for (uint _i = 0; _i < 100; _i++) {
            _var += block_changes[block.number++];
            internal_change(_var, 0x11111111);
            _var += ((x & (block.time % 4 * 2)) == 2)? (x << 16) : 0;
        }
        return _var;
    }
    function internal_change(uint x, uint new_value) private {
        block_changes[block.number] = new_value;
    }
}
