pragma solidity ^0.8.0;
interface Fallback7
{
        function c(uint64 x) external;
        function d(uint64 x) external;
        function a(address x) external;
        function b(address x) external;
        function e(uint64) external;
}

pragma solidity ^0.8.0;

contract FallbackContract
{
constructor() payable public {}
        struct Data
        {
                uint i;
                address b;
        }
        bytes4 constant AVERAGE_FUNCTION = bytes4(keccak256("Average()"));
        bytes4 constant GETTER = bytes4(keccak256("B()"));
        function Average(Data memory x) public view returns (uint)
        {
                return 0;
        }
        function B() public returns (uint, address) { return (33, address(15)); }
}

pragma solidity ^0.8.0;
/**
 * A contract with a fallback function that modifies external function call behavior.
 * The receive function takes as input a uint value (without decimal, as it's
 * interpreted as a bytes memory). The fallback function always returns some other
 * value because any other value will cause a revert.
 *
 * To test this contract, run it with a gas monitor by running:
    smart_contract_path/truffle compile && truffle migrate && truffle console
    (or with --development)
 *
 * To make your contract more complicated for debugging:
 *
 * 1. Replace contract.c(uint) with `c(uint)` and add some code to make it easier to match on gas spent
 * 2. Replace contract.c(uint) with `c(uint64)` and add some code to make it easier to match on gas
