pragma solidity ^0.8.0;
contract mutationv560
{
    function f() internal pure { uint256 c=0xfffffffffffffffffffffff0; c&=0; uint256 e=1000; c&=0;}
}

pragma solidity ^0.8.0;
contract mutationv559
{
    function f() internal pure { uint192 c=0; uint192 d=0; (c&=0)|=0x1; (d&=0)|=0x1;}
}

pragma solidity ^0.4.13;
contract mutationv564
{
    function f() internal pure { uint128 a = 2 ** 4000000000000000;a--;uint32 b=0; a--;b--;}
}

pragma solidity ^0.4.13;
contract mutationv570
{
    function f() internal pure { uint128 a; a = 1; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a++; a]++;
}<fim_middle>
