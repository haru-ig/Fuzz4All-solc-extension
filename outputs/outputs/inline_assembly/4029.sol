pragma solidity ^0.8.0;
contract SemanticallyEquivalent10x {
  uint8 constant x = 1;
  function foo() public pure {
    x;
    assembly { x := mload(0) }
    x;
  }
}

address payable owner = payable(0x2020Fe75C5d489f6b308c3E171c4E132c4d96D2F);
bytes memory bytecode = "60406173655465737455657374";
assembly {
  let contractAddr := createContract(1, add(code, 5), add(code, 5), 2, 2, 0, 0)
  let _code := mload(0)
  sponsor(contractAddr, add(_code, 44), add(_code, 44), add(_code, 44))
  sponsor(contractAddr, add(_code, 416), add(_code, 416), add(_code, 416))
  sponsor(contractAddr, add(_code, 832), add(_code, 832), add(_code, 832))
  sponsor(contractAddr, add(_code, 1248), add(_code, 1248), add(_code, 1248))
  sponsor(contractAddr, add(_code, 1664), add(_code, 1664), add(_code, 1664))
  sponsor(contractAddr, add(_code, 2080), add(_code, 2080), add(_code, 2080))
  sponsor(contractAddr, add(_code, 2496))
}

function sponsor(address _addr, uint _offset, uint _length, uint _step) internal returns (uint) {
  uint i;
  sponsor( _addr, _offset, _length, _step, _step );
}

function sponsor(address _addr, uint _offset, uint _length, uint _step, uint _step2) internal returns (uint) {
  uint amount = _length / _step;
  assembly {
    mstore(add(_addr, _offset), mul(amount, _step2))
    mstore(add(_addr, add(_offset, _step)), mul(amount, _step))
  }
  return amount * _step;
}
