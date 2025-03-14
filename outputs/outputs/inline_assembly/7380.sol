pragma solidity ^0.8.0;
contract Equivalent_contract_2 {
  function get_constant_2() public pure returns(uint constant){
    return Equivalent_contract_1.constant2;
  }
}
pragma solidity ^0.8.0;
contract Equivalent_contract_3 {
  function get_constant_1() public pure returns(uint constant){
    return Equivalent_contract_1.constant1;
  }
}
pragma solidity ^0.8.0;
contract Equivalent_contract_4 {
  function get_constant_4() public pure returns(uint constant){
    return Equivalent_contract_1.constant4;
  }
}
contract Equivalent_contract_5 {
  constructor(uint _constant2, uint _constant3, uint _constant4) {
    Equivalent_contract_1.constant2 = _constant2;
    Equivalent_contract_1.constant3 = _constant3;
    Equivalent_contract_1.constant4 = _constant4;
  }
  function get_constant_2() public pure returns(uint constant){
    return Equivalent_contract_1.constant2;
  }
  function get_constant_3() public pure returns(uint constant){
    return Equivalent_contract_1.constant3;
  }
  function get_constant_4() public pure returns(uint constant){
    return Equivalent_contract_1.constant4;
  }
}
contract Equivalent_contract_6 {
  Equivalent_contract_1 contract1;
  contract1 = Equivalent_contract_1(1,2,3);
  Equivalent_contract_4 contract4;
  contract4 = Equivalent_contract_4.get_constant_4();
  function get_contract1() public view returns(uint constant ){
    return Equivalent_contract_1.constant1;
  }
  function get_contract_5() public pure returns(uint constant constant2, uint constant constant3, uint constant constant4) {
    return Equivalent_contract_1.constant2, Equivalent_contract_1.constant3, Equivalent_contract_1.constant4;
  }
  function get_contract1_4() public view returns(uint constant, uint constant, uint constant, uint constant, ){
    return Equivalent_contract_1.constant1, Equivalent_contract_1.constant2, Equivalent_contract_1.constant3, Equivalent_contract_1.constant4;
  }
  string public data;
  function set_data(string memory _data) public {
    data = _data;
  }
  function read_data() public view returns(string memory) {
    return data;
  }
}
contract Equivalent_contract_7 {
  constructor(uint _constant
