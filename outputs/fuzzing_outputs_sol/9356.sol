pragma solidity ^0.8.0;
contract MutatingFallback4 {

function MutatingFallback4(address _address1_, address _address2_) public {
address1 = _address1_;
address2 = _address2_;
}
}
contract CreateAddress4 {

function CreateAddress4() public pure {

__callback(msg.value);
}


  function getAddress() public pure returns (address) {
  return address1;
}

  function __callback(uint _value) public pure {
  _address1_.transfer(_value);
  }



  address public address1;

}

contract Caller {

  address public mutatingFallback;

  address CreateAddress();

  function Caller() public {

   createAddress(25, address(this));

   createAddress(674, msg.sender);

   mutatingFallback().transfer(CreateAddress().getAddress());
    }


function mutatingFallback () public returns (address) {
  mutatingFallback = CreateAddress();
  return mutatingFallback;
}


  function createAddress(uint _value, address _target) public returns (address)  {
    address calldata address1 = CreateAddress().getAddress();
    address1.transfer(_value);
    return address1;
  }

}
