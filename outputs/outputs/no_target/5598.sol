pragma solidity ^0.8.0;


contract C is O{
    function O() {
        x = 0;
        y = 0;
    }
    function() external payable { x = 0; y = 1; }
    function(uint )
    public
    pure
    {
        assembly{
            mstore(marg, 3)
            mstore(0(marg), 0x19169e63)
            mstore(0(marg), 0x37ba14e1)
            mstore(0(marg), 0x18e37b81)
            mstore(0(marg), 0x8e72ed5d)
              mstore(0(marg), 0)
              mstore(0(marg), 0)
              calldatacopy(0,0,calldatasize)
              call(0(marg), marg, calldatasize, 0, returndatasize)

            var r0 := returndatasize
            var r1 := mload(0(marg))
            var r2 := mload(0(marg))


        }
    }
}
