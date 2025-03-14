pragma solidity ^0.8.0;
contract m06 {
    bool valid;
    uint256 constant public M = 9;
    uint256 constant public N = 0xabcdef2c;
    uint256 constant public P = 0xabcdef2c;
    uint256 constant public D0 = 0xabcdef2c;
    modifier valid_only_contract() {
        if(valid)
            valid_only_contract();
    }
}
contract m06_b {
    bool valid_bool;
    address valid_addr;
    bytes32 valid_bytes;
    uint256 valid_uint;
    bytes valid_bytesArr;

    uint256 constant public M = 0x11;
    uint256 constant public N = 0xabcdef;
    uint256 constant public P = 0xabcdef;
    uint256 constant public D0 = 0xabcdef;
    modifier valid_only() {
        valid_only_contract();
        valid_bool;
    }

    modifier valid_only_contract() {
        if(!valid_addr.send(block.timestamp)) valid;
    }
}
