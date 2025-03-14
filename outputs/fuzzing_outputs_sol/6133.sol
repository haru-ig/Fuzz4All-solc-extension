pragma solidity ^0.8.0;
contract C {
    contract A {
        function x() external pure {
            assembly {
                let add = 42 : add64
            }
        }
    }
}
