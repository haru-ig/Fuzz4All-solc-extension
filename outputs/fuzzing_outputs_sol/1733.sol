pragma solidity ^0.8.0;
contract Foo {
    function f ( bytes memory ) external returns (bool) {
        if ( true ) {
            throw;
        }
        return true;
    }
uint256 private x;
constructor () public {
        x = 1;
    }
fallback () internal payable {
    if ( true ) {
        throw;
    }
    x = 2;
}
}
contract Test {
    function g () public {
        assembly {

            switch x {
            case 1 {
                call(call(call(0, 0, 0, 0, 0, 0, 0, 0, 0), 0, 0, 0, 0, 0, 0, 0))
                    break
            default { }
            }
        }
    }
}
