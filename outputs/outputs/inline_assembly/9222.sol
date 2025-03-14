pragma solidity ^0.8.0;
contract A {
    function mutated(uint) public pure returns (uint) {
      assembly {
        let a := 0
        let b := mul(a, a)
        let c := sqrt(b)
        let d := div(b, a)
      }
      return a;
    }
}
