pragma solidity ^0.8.0;


contract Contract1 {


  function getAccountAddress() public view returns (address) {
    return address(msg.sender);
  }



  function getCallerAddressFromAssembly() public pure {
    assembly {
      let return_data := add(gasprice, 0x20, 0x60, returndatasize, 0x40)
      let return_data_pos := return_data
      let gas_addr := 0
      let mem_addr := mload(add(112, return_data_pos))

      gas_addr := mload(add(0, mem_addr))

      mem_addr := add(mem_addr, 112)


      mstore(return_data_pos, gas_addr)
      mstore(add(mem_addr, 4), return_data)


      mload(0x40)
    }
  }
}
