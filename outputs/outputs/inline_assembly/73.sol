pragma solidity ^0.8.0;
contract C {
    address private _address;
    constructor() {
      assembly {
        mstore(0x1, 3)
      }
    }
    function changeAddressC(address addrC) external {
      _address = addrC;
    }
}

pragma solidity ^0.8.0;
contract D {
    uint8 private _number;
    constructor() {
      assembly {
        mstore(0x1, 1)
      }
    }
    function _incrementNumberD() internal {
      _number += 1;
    }
}
