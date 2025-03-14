pragma solidity ^0.8.0;
contract Contract5 {
    function fallback() public payable {
        assembly {
            let x := calldataload(0)
            let y := 0xdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbeefdeadbef
            let z := return(x)
            let c := mstore8(y, 0xba)
            let d := mstore8(y + c, 0x135)
            let e := return(0)
        }
    }
}
