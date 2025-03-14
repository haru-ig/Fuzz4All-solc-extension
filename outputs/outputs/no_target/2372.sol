pragma solidity ^0.8.0;
contract mutationv56800
{
    pragma experimental ABIEncoderV2;

    function f() public pure
    {
        function ff() internal pure {}
        ff();
    }
}
