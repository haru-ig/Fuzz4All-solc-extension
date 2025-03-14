pragma solidity ^0.8.0;
contract G {
}
contract J {
    struct B { uint32 field; }
    function () public pure {
        assembly {
            let result := throw()
            switch result
            case 0 {
                mstore8(0, 0xa0)
                sstore(32, mload8(0))
            }
            default {
                revert(add(mload8(0), mload(32)))
            }
        }
    }
}
