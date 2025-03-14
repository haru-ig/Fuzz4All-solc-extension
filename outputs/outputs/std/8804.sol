pragma solidity ^0.8.0;
contract Mutated {
    uint[7] private x;
    uint[7] private y;
    address public beneficiary;

    constructor() {
        for (uint[7] memory i in x) {
            x[i] = 0;
        }
        for (uint[7] memory i in y) {
            y[i] = 0;
        }
    }

    function add(address addr) internal pure returns(uint)
    {
        return address(this).balance;
    }
}
