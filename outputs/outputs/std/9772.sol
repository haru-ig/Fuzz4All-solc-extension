pragma solidity ^0.8.0;
contract Modulable {
    uint public immutable x;

    constructor(uint _x) {
        x = _x;
    }

    function test() public view returns (uint) {
        return uint2add(x, 4);
    }
    function uint2add(uint a, uint b) pure internal returns (uint c) {
        require(b <= 2**48);
        assembly {
            c := a + b
        }
    }
}
