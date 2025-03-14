pragma solidity ^0.8.0;
interface MutateTest010ee {
}



pragma solidity ^0.8.0;



contract Solidity0482 {

}







contract ExceptionTests {
    function f(address addr) public view returns (bool) {
        assembly {

            let r := mload(0xff440)
            let t := calldataload(32)
            let o := 0x00
            let y := 0x6000600060006000
            let x := add(add(or(x, addr), mul(sub(0x000000000000000000000000000000000000000000000000000000000000000000), and(x, t))), or(0x0000000000000000000000000000000000000000000000000000000000000000, mul(t, r))))
            let s := and(eq(x, 0x6000600060006000), div(mul(x, r), x))
            let raddr := sub(addr, y)
            let r2 := calldataload(32)
            if eq(x, s) {
                revert(0x{150380380b956b61000000000000000000000000000000000000000000000000}:2)
            } else {
                revert(0x{150380380b956b6100000000000000000000
