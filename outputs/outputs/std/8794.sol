pragma solidity ^0.8.0;
contract MutatedMut2 {
    mut mapping (bytes32 => address) public addresses;
    constructor () {
        addresses[0x12] = 0x34566789AB0C1D2E3F043D2898987A425456;
        delete addresses[0x356495959566987924];
        addresses[0x5] = 0x7C;
    }

    function caller() public view virtual returns (address) {
        return msg.sender;
    }

    function caller2() public view virtual returns (address) {
        address i = msg.sender;
        return i;
    }
}
