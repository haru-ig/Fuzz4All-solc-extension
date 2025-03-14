pragma solidity ^0.8.0;
contract Example1 is Example2 {
    function foo() public pure {
        assembly {

            let x := mload(_returndata)
            returndatacopy(0, 0, x)
        }
    }
}
