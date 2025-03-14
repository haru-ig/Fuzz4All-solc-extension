pragma solidity ^0.8.0;
contract H {
  mapping(uint256 => uint256) public _numbers;
  uint256 public total;
  constructor() {
    total = 0;
  }
  function incrementTotal() public {
    total = total + 1;
    uint256 number;
    assembly {
      let _local := total
      number := add(_local,1)
    }
    _numbers[number] = _numbers[number] + 1;
  }
  function decrementTotal() public {
    total = total - 1;
    uint256 number;
    assembly {
      let _local := total
      number := sub(_local,1)
    }
    _numbers[number] = _numbers[number] - 1;
  }
}
