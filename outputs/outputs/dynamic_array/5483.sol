pragma solidity ^0.8.0;
contract Test43 {
    void f() {
        bytes memory x = hex'1caffee';
        bytes memory xx = hex'1caffee';
        assembly {
            let x := x
            let xx := xx
        }
    }
}
