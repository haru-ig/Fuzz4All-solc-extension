pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated_sn2971 { uint public x; uint public w; uint func(){x = 2; w = 5;}}


contract S {
  function S() public
  {
    uint x = uint(42);
    mutated_sn6096 x0 = mutated_sn6096(x);
    uint x0_ = x0.x;
    assert( x0_.eq(uint(42)));
    x0 = mutated_sn6096(x0_+1);
    uint x1 = x0.x;
    assert( x1.eq(uint(64)));
    assert( x0.x.eq(uint(64)));
    x2.mutate(1);
    uint x;
  }
}


function isAddress(address a) internal view returns (bool) {
  if (a == 0) {
    return true;
  } else {
    return false;
  }
}


function _callContractFunction(address target_, bytes memory data_)
    internal
{
  require(isAddress(target_), "Invalid target");
  uint functionId = _getFunctionIdentifier(data_);
  assert(functionId > 0, 'Invalid function');
  (bool success, bytes memory returndata) = target_.call(data_);
  require(success, 'Returned error: '.concat(string(returndata)));
}


function _getFunctionIdentifier(bytes memory data_)
  internal constant returns (uint)
{
  bytes memory empty;
  assembly {
    let off := mload(0x40)
    mstore(empty, 0x50)
    mstore(off, mload(data_))
    functionSelector := extcodesize(empty, 0, mload(off))
    return functionSelector
  }
}
