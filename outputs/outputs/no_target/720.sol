pragma solidity ^0.8.0;
contract RevertTest2 {
    function add0(uint a, uint b)
        pure private
        returns (uint)
    {
        require(a == 0);
        require(b == 0);

        return uint(b > a);
    }
    function add5()
        pure private
        returns (uint)
    {
        uint overflow;
        return overflow + overflow + overflow;
    }
    function add10()
        pure private
        returns (uint)
    {
        uint overflow;
        return overflow + overflow - overflow;
    }
}
