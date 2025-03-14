pragma solidity ^0.8.0;
contract SemanticallyEquivalentSolidity91 {
    function mutatorTest21() public {

        assembly {
            let x := mload(0x40)
            mstore(0x40, not x)
        }
    }

    function mutatorTest22() external {

        assembly {
            let x := mload(0x40)
            mstore(0x40, not x)
        }
    }
}
