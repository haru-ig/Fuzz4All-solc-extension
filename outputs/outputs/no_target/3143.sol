pragma solidity ^0.8.0;
contract seven{
    function test() public pure {
        seven storage s;
        s.x =7;
        assert( address(s.x) == address(7));
    }
}
