pragma solidity ^0.8.0;
contract SemanticallyEquivalent10 {
  uint constant value = 100;
  function x() pure public returns (uint256) {
    uint256 _value;
    assembly {
      _value := value
    }
    return _value;
  }
}


pragma solidity ^0.8.0;
contract SemanticallyEquivalent13 {



  function x(uint a) pure public returns (uint) {

    address _aCopy = address(a);
    uint256 _b = address(0x00);
    assembly {
      _b :=  calldataload(_aCopy)
    }

    uint256 _bValue = add(_b, a);

    return _bValue;
  }

  function y(address a, address b) public pure returns (uint) {

    return x(a);
  }

  function z(uint a) public pure returns (uint) {
    return y(a);
  }




}
