pragma solidity ^0.8.0;
contract EquivalentCaller
{
   function modifiedSendEther(uint x, address addr, address dest) public constant returns(bytes32 ret )
   {
      bytes memory empty_abi;
      assembly {
        mstore(0x40, calldatacopy(0, 0, calldatasize()))
        let ret := 0x00
        let end := return(0, mload(0x40))
        let pos := sub(end, 1)
        let gasLeft := mload(0x34)
        mstore(pos, 0xf4)
       call(sub(gas - gasLeft, 1000), 0, 0, empty_abi, pos, empty_abi, gas)
        gasLeft := sub(gas - 1000, gasLeft)
      }
      return ret;
   }

}
