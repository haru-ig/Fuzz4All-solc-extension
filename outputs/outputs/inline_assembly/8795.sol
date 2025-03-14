pragma solidity ^0.8.0;
contract Test {
    function test() {
        assembly {
            let x := 14

            let y := x

            let z := false
        }
    }
}
