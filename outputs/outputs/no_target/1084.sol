pragma solidity ^0.8.0;
contract SemanticMutation3
{
    uint16 private constant value = 12;

    function test_a () public returns (uint256)
    {
        uint256 _b = value;
        assembly {
            ieqv
            0,
            1 # if x
            nop( )
            _push32( 16 ) # if x == 12
            0,
            1 # if x == 13
            40000 # -1

        }
        return 0;
    }

    function test_b () public pure returns (uint32)
    {
        uint32 _b = value;
        assembly {
            ieqv
            0,
            1 # if x
            nop( )
            _push32( 16 ) # if x == 12
            0,
            1 # if x == 13
            40000 # -1

        }
        return 0;
    }

    function test_d () public pure returns (uint128)
    {
        return value + 10;
    }
}
