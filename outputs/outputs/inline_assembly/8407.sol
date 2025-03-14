pragma solidity ^0.8.0;
contract SolveAssembly5
{
    function test() public pure returns(uint)
    {
        uint[] memory z = [123, 456];
        uint[16] memory x = [1, 2, 3, 4, 6];

        uint[4] memory z1 = [0, 0, 0, 0];
        uint k;

        for (uint i = 0; i < 4; i++)
        {
            assembly
            {
                let m := add(x, i)
                let j := add(m, 8)
                z1 := and(z1, mload(j))
                j := add(m, j, 8)
                mstore(j, and(z1, mload(j)))
                mstore(j, and(z1, mload(j)))
                k := mload(j)
            }

            if (k == x[i])
            {
                return x[i];
            }
        }
    }
}
