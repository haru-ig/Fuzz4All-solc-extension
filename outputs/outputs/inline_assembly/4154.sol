pragma solidity ^0.8.0;
contract Mutators {
    function test_3 () public {
        assembly {
            let a := 1
            let c := a
            c := c + 1
        }
    }
    function test () public {
        assembly {
            let x := a1
            let a1 := a
            x := a1
            var c := x
            var d := x + 1

            mstore(0, c)
            x := mload(0)
        }
    }
}
