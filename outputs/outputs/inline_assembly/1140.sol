pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MutatedClass {
  uint constant X = 45;
  uint x;
  constructor() public{
    x = X;
  }
  function _calculate() public pure returns (uint) {
    x = 2 * X;
  }
  function _modify() public {
    x = X;
  }
}

contract Bug199 {

    event GasIncreased(address indexed account, uint amount);

    function createContract() public returns (address) {
      MutatedClass storage x = MutatedClass.storage();
      MutatedClass storage y = MutatedClass.storage();
      return address(x);
    }

    function _calculate() public pure returns (address x) {
      return address(MutatedClass.storage());
    }

    function _increaseGas() public pure {
        address x = address(MutatedClass.storage());
        emit GasIncreased(x, 100);
    }

    function addX(uint x) public pure {
        address x_ = address(MutatedClass.storage());
        MutatedClass storage x_mut = MutatedClass.storage();
        x_mut.x += x;
    }

    function _checkX(uint expected) public pure {
        address x_ = address(MutatedClass.storage());
        require(x_ == expected, "inconsistent state");
    }

    function _checkXNot(uint expected) public pure {
        address x_ = address(MutatedClass.storage());
        require(x_!= expected, "inconsistent state");
    }

}

contract Bug207 {

    struct AddressData {
        uint counter;
        uint expected;
        uint actual;
    }

    address constant owner = msg.sender;
    uint constant startAddress = 0x7FF5A33C628210B4;
    mapping(address=>AddressData) states;
    function increase(uint incrementBy, uint n) public returns (uint new_state) {
        address address_ = "0x22f4A2f6D8E86777006E6f796B2B3aF2B607E0fF";
        states[address_].counter++;
        uint new_expected = states[address_].expected;
        if(states[address_].counter > n){
            uint overflow = new_expected - states[address_].actual;
            states[address_].expected =  incrementBy * states[address_].counter + overflow;
        }else{
            states[address_].
