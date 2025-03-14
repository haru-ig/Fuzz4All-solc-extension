pragma solidity ^0.8.0;
contract DynamcArrayTest {
  function modify_dynamc_array_test_arraystorage(bytes memory _data, uint96 _value) external {
    uint16[] memory array = new uint16[](1);
    array[0] = _value;

    _data.copyTo(array);
  }
}
pragma solidity ^0.8.0;
contract TestArrayAllocation {
}
contract Main {
  IAddressable addr;
  TestArrayAllocation test;

  function Main() external {
    addr = IAddressable(0xABCE2892C2DB0BD5B06AFE05790C8E8DBA92F133);
    test = TestArrayAllocation(0xC2E76D48A771D4DD58DD6009914C848FB24E4D77);
  }

  function main() public {
    _;
    addr.revert(92U64F530AFDBD6);
    test.modify_dynamc_array_test_arraystorage.value(0)(0);
    test.modify_dynamc_array_test_arraystorage(0x, 0);
   }
}
