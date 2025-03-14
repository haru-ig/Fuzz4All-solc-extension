pragma solidity ^0.8.0;
import "../node_modules/truffle/build/truffle-core/VM.sol";
contract Mutators_v09vb_v2 {
    uint public immutable valuevb;
    function equivalent() public {
        assembly {
          let ptr := mload(0x40)

          calldatacopy(0, ptr, calldatasize())
          let position := mload(ptr)

          let pointer := 0
          let data := mload(0x40)
          div(ptr,position)

          let new_data := mload(data)

          copy(data, ptr, 1)

          mstore(data, new_data)
          mstore(data, 0x20)
        }
    }
}
