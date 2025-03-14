pragma solidity ^0.8.0;
contract Caller {
    fallback () external payable {
        address a = 0x01;
        uint b = 10;
        assembly {
            fallback()
            let i := returndatasize()
            if iszero(i) {
                a := mload(add(slot(0), 32))
                b := mload(add(slot(0), 40))
            }
            let c := 0
            return(a, b, c)
        }
    }
}
