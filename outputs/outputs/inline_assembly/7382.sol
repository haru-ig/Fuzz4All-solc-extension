pragma solidity ^0.8.0;
contract Semantic_Equivalent_contract {
  address public admin;
  uint public constant constant1 = 10;
  uint public constant constant2 = 11;
  uint public constant constant3 = 12;
  uint public constant constant4 = 13;
  constructor() {
    admin = msg.sender;
  }
}
contract Equivalent_contract_2 {
  uint public constant constant1 = 10;
  uint public constant constant2 = 11;
  uint public constant constant3 = 12;
  uint public constant constant4 = 13;
  constructor() {
    admin = msg.sender;
    Equivalent_contract_1.constant1 = 99;
    Equivalent_contract_2.constant3 = 777;
  }
}
contract Equivalent_contract_3 {
  struct TestStruct {
    uint constant constant1 = 10;
    uint constant constant2 = 11;
    uint constant constant3 = 12;
    uint constant constant4 = 13;
  }
  TestStruct public tes;
  constructor() {
    tes.tes= TestStruct(88, 99, 100, 111);
    Equivalent_contract_2.tes.constant1 = 99;
    Equivalent_contract_3.tes.constant3 = 777;
  }
  function get_te() public view returns (TestStruct storage) {
    return(tes);
  }
}
contract MyContract {
    mapping (uint => address) public addressLookup;
    constructor() public {
        addressLookup[1] = msg.sender;
        addressLookup[2] = msg.sender;
    }
}
contract Equivalent_contract {
  uint public constant constant1 = 99;
  uint public constant constant2 = 42;
  uint public constant constant3 = 31231;
  uint public constant constant4 = 11111111;
  constructor() public {}
  function get_my_data() public view returns (address, uint, uint, uint) {
    (address, uint, uint, uint) memory result_1 = (addressLookup.get(1), uint(0), uint(0), uint(0));
    (address, uint, uint, uint) memory result_2 = (addressLookup.get(2), uint(0), uint(0), uint(0));
    (address, uint, uint, uint) memory result_3 = (addressLookup.get(myfunction()), uint(0), uint(0), uint(0));
    return result_1;
  }
  function myfunction() public view returns(uint) {
    return uint(0);
  }
