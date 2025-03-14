pragma solidity ^0.8.0;
contract solveAssembly6
{
    uint[] public booleans = [true, false, true, false, true, false, true, true, true, true];
    function test() public returns(uint)
    {
        bool z = true;
        uint i;
        uint j = 0x123;
        assembly
        {
            for(i := 0;i < mload(booleans); i := add(i, 1))
            {
                mstore(mload(booleans), add(mload(booleans), i))
                j := mul(add(j, mload(booleans)), mload(booleans))
            }
            if eq(j, z)
                z := false
            else
            {
                mstore(mload(booleans), add(mload(booleans), 0x123))
                j := mload(mload(booleans))
            }
        }
        return 0x123;
    }
}
