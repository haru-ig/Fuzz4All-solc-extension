pragma solidity ^0.8.0;
abstract contract A {
    address payable public admin;
    address payable public otherAdmin;

    uint constant RANGE = 10;
    uint constant MAX_INTEGER = 100;
    uint num1;
    uint num2;
    uint r;
   function getOutputs(uint x) public returns (uint) {
      num1 = MAX_INTEGER / 1000;
      r = num1 + num2 + 2 * num1 + (num1 * num2) +1;
   }

    event AdminChanged(address indexed from, address indexed to);
    constructor() {
        admin = msg.sender;
        emit AdminChanged(address(0), admin);
    }

    modifier onlyAdmin() {
        require(msg.sender == admin && _msgSender() == admin);
        _;
    }


    modifier onlyAdminOrOther(address _other) {
      if (msg.sender == admin || msg.sender == _other) {
        _;
      } else {
        require(address(0)!= _other || _msgSender() == _other);
      }
    }

    fallback () { revert();}

   function changeAdmin(address _admin) public {
    emit AdminChanged(admin, _admin);
    admin = _admin;
  }

  function changeOtherAdmin(address _otherAdmin) public onlyAdmin {
    emit AdminChanged(otherAdmin, _otherAdmin);
    otherAdmin = _otherAdmin;
  }
}
library AddressHelper {


  function revertNotUsed() internal pure {
    revert("This call should not be used");
  }


  function revertWhenDataIncorrect(bytes memory data) internal pure {
    require(data.length == 0, revertNotUsed());
  }
}
