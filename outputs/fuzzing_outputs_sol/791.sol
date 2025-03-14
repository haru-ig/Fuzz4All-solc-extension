pragma solidity ^0.8.0;
contract FallbackModificationExample {
  function modify() public payable {
    uint _datastorage;
    uint256 i;
    for (i = 0; i < 50; i++) {
      emit SomeNameToReport(name(), address(this));
    }
  }
}

contract CallerExample {
  address public mycontract;

  function mycontract() public {
    mycontract = msg.sender;
  }

  function callcontract() public payable {
    require(msg.value == 1 ether);
    assembly {

      let ptr := mload(0x40)


      mstore(ptr, mload(0x0))


      calldatacopy(ptr, mload(0x40))

      let contract_address := mload(ptr)


      let con_inst := create(contract_address)


      let returndata := calldataload(ptr, 0x20)
      con_inst.modify()


      let result := mload(ptr)
      mstore(ptr, result)






      mstore(0x20, returndata)



    }
  }
}
