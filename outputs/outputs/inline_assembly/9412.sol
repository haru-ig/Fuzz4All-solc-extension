pragma solidity ^0.8.0;
contract MGen {
  constructor(int _i) public {
    i = _i;
  }
  int i;
  mapping(address => int) public map;
}
contract MutantGen is MGen {

}
contract MutantGenWithAssembly {

  constructor(int _i) public {
    uint _i = _i;
    assembly {
      mstore(add(0x0, 0x20), _i)
    }
  }
}

contract MutantGenWithSolidity {

  constructor(int _i) public {
    uint _i = _i;
    __setUintToAddress(0x20, _i).expect("should assign bytes memory into the correct address");
  }

  function __setUintToAddress(uint _offset, uint _value) private pure returns (address memory) {


    assembly {
      let _memoryStart := mload(0x0)
      let _address := add(_memoryStart, _offset)
      mstore(0x0, _value)
      mstore(32, _address)
      return(0x0)
    }
  }

  uint private __gap;
}
