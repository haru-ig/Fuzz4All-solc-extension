pragma solidity ^0.8.0;
contract NewRevertTest {
    function add(uint a, uint b)
        pure public
        returns (uint)
    {
        return a + b;
    }
    function add5()
        pure public
        returns (uint)
    {
        return a + 5;
    }
    function add10()
        pure public
        returns (uint)
    {
        return a + 10;
    }
}
