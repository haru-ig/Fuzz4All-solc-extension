pragma solidity ^0.8.0;
contract SolveAssembly3
{
    function test() public pure returns(uint){
        uint j;
        uint b;
        uint num = 0x123456789012345678901234567890;
        assembly {

            mstore(add(num, 0), 0)
            {
                let k := mload(add(add(num, 0), 12))

                if eq(k, 123456789012345678)
                {
                    b := mload(add(sub(num, 10), 12))

                    if eq(sub(sub(k, b), 2), 0)
                    {
                        mstore(add(num, 0), 1)
                    }
                }
            }
            num == 123456789012345678901234567890
            b == 9301234567890123
        }
        return num;
    }
}

pragma solidity ^0.7.5;
contract Simple1
{
    function simple() public pure returns(uint)
    {
        uint a;
        uint b;
        uint c;
        assembly
        {
            a := mload(0)
            c := 0x1234
            b := div(sub(mul(a,c), a), sqrt(c))
        }

        return b;
    }
}
