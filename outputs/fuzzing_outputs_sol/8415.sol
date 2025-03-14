pragma solidity ^0.8.0;
contract CallerExample {
  fallback() external pure {
    assembly {

      let s := 0
      switch calldata(0, 0, 0, s)
        case 0 { mstore(0, 9000) }
        default {
          switch 0 {
            case 5 { s := create2(0, size(calldata), calldatasize) }
            default {
              switch div(mod(calldata(0, 0, 0),10),2):
                case 0   { revert(0, 0) }
                default { revert(0, 0) }
              }
            }
          }
        }
    }
  }
}
