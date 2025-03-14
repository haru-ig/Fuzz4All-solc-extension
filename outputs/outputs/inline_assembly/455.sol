pragma solidity ^0.8.0;
contract SemanticallyEquivalentM21 {
    constructor () public {
        assembly {
            {
                mstore(0x1000, 0x555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555)
            }
            revert()
        }
    }
}
