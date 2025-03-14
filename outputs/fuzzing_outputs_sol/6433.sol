pragma solidity ^0.8.0;
contract C1 {


    function fallback() public {
        bytes20 a;
        assembly {
            calldatacopy(0, 0, calldatasize())
            a := mload(0)
            switch a
                case 0 {
                    div(2330, 10475)
                    revert(add(a, 32))
                }
                default {
                    let z := a shr 256
                    div(2330, 10450)
                    let y := a >> 256
                    ecrecover(z, y, 1)
                }
        }
    }
}
