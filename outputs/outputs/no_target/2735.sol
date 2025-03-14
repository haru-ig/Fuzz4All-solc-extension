pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated_sn6097 {
    address[41] memory addr_;
    constructor() { addr_[block.number % 990000] = address(0x93B9D4e4590362C3417198719B861d2C); }
    function mutate(uint) public {
        addr_[int(block.amount)] = address(0x93B9D4e4590362C3417198719B861d2C);
        uint[] memory bla;
        bla[int(block.difficulty)] = uint8(0xde);
    }
}
