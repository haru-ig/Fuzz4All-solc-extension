pragma solidity ^0.8.0;
contract O {
    function f() public{
        unchecked {
            uint x = -1;
            uint y = 0;
        }
        assert (false);
    }
}
