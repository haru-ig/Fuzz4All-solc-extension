pragma solidity ^0.8.0;
import "./FallbackReceivable.sol";
contract FallbackReceiver is FallbackReceivable {
    bytes32 public name;
    uint8 public version;
    function FallbackReceiver () {
        name = 'FallbackReceiver';
        version = 0;
    }
}

contract Caller {
    function get() public {
      FallbackReceiver fallbackReceiver = new FallbackReceiver();
      (bool success, ) = fallbackReceiver.fallback.value(1 ether)("Success!");
      if (!success) {
          assembly {
            print(0)
          }
      } else {
          FallbackReceiver.fallback();
      }
    }
}
