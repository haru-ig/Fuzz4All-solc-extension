pragma solidity ^0.8.0;
contract caller
{
    function f() external payable
    {
        assembly {
          mstore(0xd1a20006, add(0, 0x8))
          switch switch_exp
        }
    }
}
