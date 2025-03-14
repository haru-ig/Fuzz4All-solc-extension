pragma solidity ^0.8.0;
library C9 {
    struct T { uint a; }
    function m(T memory b) public pure {
        T memory c; c=b;
        assembly {
            calldatacopy(0x40, 0x30, calldatasize())
            returndatacopy(0, returndata, returndatasize())
            switch div(calldatasize(), 32)
                case 0 { revert(0, '') }
                 default { revert(0) }
            }
        }
    }
}
