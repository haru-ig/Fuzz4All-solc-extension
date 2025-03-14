pragma solidity ^0.8.0;
contract mutationv5
{
    function f() public pure { uint c=0; uint256 d=7; uint256 e=1; }
}

pragma solidity ^0.8.0;
contract mutationv53
{
    function f() public pure
    {
        uint c=0x1234567890000000000000000;
        uint256 d=21356;
        uint256 e=5;
        e>>=12;
    }
}

pragma solidity ^0.8.0;
contract mutationv54
{
    function f() public pure
    {
        uint c=0x12345678900000000000000000;
        uint256 d=21356;
        uint256 e=5;
        assert(e==4);
    }
}
