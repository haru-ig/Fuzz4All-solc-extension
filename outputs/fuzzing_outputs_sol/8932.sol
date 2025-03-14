pragma solidity ^0.8.0;
import './Caller.sol';

contract NewCallerExample {
  Ctor __ctor;
  constructor() {
    __ctor = Ctor.__constructor(new Caller());
  }
  function __new() internal { __try__new(); __check__new(); }
  function __try__new() internal {
    assembly { __retval := create2(callvalue(), extcodesize(), calldatasize()) }
    if (success(__retval)) { (data, dataLength) = abi.decode(__retval, (bytes, uint256)) } else { revert(__retval) }
  }
  function __new(address __foo, bytes memory) internal { __try__new2(__foo); __check__new2(__foo); }
  function __try__new2(address __foo) internal {
    assembly { __retval := create2(__foo, callvalue(), extcodesize()) }
    if (success(__retval)) { (data, dataLength) = abi.decode(__retval, (bytes, uint256)) } else { revert(__retval) }
  }
  function __new2(address __foo) internal { __try__new2(__foo); __check__new2(__foo); }
  function __check__new() internal { require(false, "NewCallerExample.__new"); }
  function __check__new2(address __foo) internal { require(false, "NewCallerExample.__new2"); }
  %new_call_body%
  function __ctor() internal callPayable {
    __try__new();
    require(true, "NewCallerExample.__new");
  }
}

pragma solidity ^0.8.0;
import './Caller.sol';
contract Ctor {
  function __new(address __foo, bytes memory _data) internal {
    __foo.transfer(_data.length);
  }
  function __Constructor(address) internal constructor() {}
}
