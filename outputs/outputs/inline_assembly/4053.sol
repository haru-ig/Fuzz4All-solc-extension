pragma solidity ^0.8.0;
contract Equivalent24xSemantics6 {
    uint constant x1 = 1;
    uint constant x2 = 2;

    uint8 v;
    function () public pure {
        assembly {
            let r := add(x2, x2)
            mstore(add(x1, 1), v)
            mstore(add(add(x1, 1), 1), mload(r))
        }
    }
}
