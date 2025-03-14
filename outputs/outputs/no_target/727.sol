pragma solidity ^0.8.0;
contract AddReverts {
    function add(uint a, uint b)
        pure public
        returns (uint c)
    {
        require(true);
        return a + b + 1;
    }
}
