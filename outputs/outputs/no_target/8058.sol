pragma solidity ^0.8.0;
contract RestrictedMutator3 {
    address a0
    constructor (uint8 s) public {
        a0 = address(0x7654);
    }


    receive () payable public {
        a0 = address(0x7654);
        revert();
    }

    fallback () external returns (uint) {
        a0 = address(0x7654);
        revert();
    }
}
