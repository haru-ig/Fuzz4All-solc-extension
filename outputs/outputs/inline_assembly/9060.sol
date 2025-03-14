pragma solidity ^0.8.0;
interface I
{
    function add(uint) external pure returns (uint);
}
contract C
{
    I public innerInterface;
    function someContractFunction() public pure  {
        I innerContract = I(0x1234);
        uint x = Lib.add(10, 7);
        _inlineAssembly(x);

        x = innerInterface.add(5);
        _inlineAssembly(x);
    }

    function _inlineAssembly(uint x) private pure
    {
        assembly {
            let x_copy := add(x, 10)

            swap(swap(x_copy, mload(add(x, 220))), 220)
            mstore(0xb502, x_copy)
            mstore(0xb601, 0x0)
        }
    }
}
