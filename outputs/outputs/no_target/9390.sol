pragma solidity ^0.8.0;
contract SemanticalEquiv12
{
    function logMe() internal view {
        address toBeModificated = address(0x1234e236738948938f4721657adf7874505bb632);

        uint256 constant value = uint256(0);
        toBeModificated.transfer(value);
    }
}
