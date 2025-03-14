pragma solidity ^0.8.0;
contract SafeNonChecked {
    bytes calldata empty = new bytes(0);
    function() external {
        unchecked {
        }
    }
}

import "0x5be1e99413523914e151607d48a456b318b3f2e2d.sol";
contract NonChecked {
    constructor() public {
        unchecked {
        }
    }
}
