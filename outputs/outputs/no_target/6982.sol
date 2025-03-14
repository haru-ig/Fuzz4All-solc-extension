pragma solidity ^0.8.0;
contract MutateTestc86b {
    uint256 val;

    assembly {
        mstore(0xf4, 0x60)
mutator():
{
        val := calldatacopy(0x7f4, 1)
revert()
}
return(0x0, 0x0)
}
}
