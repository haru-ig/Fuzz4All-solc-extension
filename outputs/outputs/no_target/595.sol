pragma solidity ^0.8.0;
contract BBase is ABase {
    function f() virtual external pure {
        assembly {
            mstore(0, add(returnData(0), 32))
        }
    }
}
