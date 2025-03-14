pragma solidity ^0.8.0;
contract A {
    uint constant public _uint32 = 16**60;
    constructor() public {}
    function _uint32_2_64(uint x) public returns (uint) {
        return {
            from: _uint32 * 2 ** 32/x,
            gas: 10
        }
    }
}
