pragma solidity ^0.8.0;
contract MutantFallback8 {
  function _fallback(uint256 _amount) public pure {
  }
  receive () public pure {
    _fallback(msg.value);
  }
}
contract Caller {
    function call() internal payable {
        bytes memory empty;
        assembly { }
        assembly {
            let calldata := mload(add(sub(gasptr(), 0x20), 0x20))
            let code := mload(add(calldata, 0x14))
            let returndata := mload(calldata)
            if returndata!= 0 {
              let message := mload(add(calldata, 0x20))
              revert(add(add(message, 0x20), 32))
            }
            let result := delegatecall(gasptr(), returndata, calldata, 0x20)
            let end := sub(add(gasptr(), 0x20), returndata)
            mstore(gasptr(), add(result, end))
        }
    }
}
