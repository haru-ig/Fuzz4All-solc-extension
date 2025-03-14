pragma solidity ^0.8.0;
contract C {
    uint8 private _number;
    constructor() {
      _incrementNumberC();
    }
    function _incrementNumberC() internal {
      _number += 1;
    }
}
contract A {
   function test() {
        B BInstance = new B();
        uint32 outputB = BInstance.number;
        C CInstance = new C();
        uint32 outputC = CInstance.number;
        BInstance.number = BInstance.number + 1;
        CInstance.number = CInstance.number + 1;
    }
}
