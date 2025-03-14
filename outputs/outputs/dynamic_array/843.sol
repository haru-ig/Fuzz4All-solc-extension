pragma solidity ^0.8.0;
contract Mutated {
    Equivalent immutable data;
    constructor() public {
        Equivalent memory e = new Equivalent();
        data = e;
    }
    function x() public pure returns (uint) {
        data.x += 1;
        uint x;
        assembly {
            x := mload(0x40)
        }
        return x;
    }
}
