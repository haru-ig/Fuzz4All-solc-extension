pragma solidity ^0.8.0;
contract Caller {
  function fallback() public payable {
    Fallback f;
    assembly {
      f._callCode{0}(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0)
      revert(0, 0)
    }
  }

  function _callCode(address a, bytes memory b) private view {
    assembly {
      a := mload(add(storage(), 0x20))

      function() public pure {
        switch switchseg(mload(add(storage(), 0x10)))
          case 1:
            break
          case 2:
            break
          default:

            switch segresult
            case 0 {
              a := add(a, 32)
            }
            default {
              a := switchseg(a)
            }
            a := switchseg(mload(add(a, 0x40)))
          }
          let result := switchseg(switchseg(a))
          let buf := mload(add(a, 0x70))
          let code := or(mload(add(a, 0x20)), not(0xfffd)) & not(result))
          let ptr := add(a, 0x140)
          mstore(ptr, mload(add(buf, 0x30)))
          mstore(add(a, 0x140), mload(add(buf, 0x40)))
          mstore(add(a, 0x180), result)
          mstore(add(a, 0x200), switchseg(code))
          mstore(add(a, 0x220), switchseg(not(code)))

          if switchseg(switchseg(mload(add(a, 0x20)))) gt 0 {
                let ptr := a
                ptr := add(ptr, 0x1200)
                mstore(add(ptr, 0), switchseg(code))
                ptr := add(ptr, 0x4600)
                mstore(add(ptr, 0), switchseg(not(code)))
                mstore(ptr, a)
                ptr := ptr
            ptr := add(ptr, 0x1204)
            mstore(add(ptr, 0), byte(switchseg(
