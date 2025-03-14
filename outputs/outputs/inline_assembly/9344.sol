pragma solidity ^0.8.0;
contract C {
    uint constant r = 10;
    function h() public pure returns (uint) {
         return 0;
    }
    constructor() {
        uint b;
        assembly {b := 10}
    }
}
contract C {
    uint constant r = 10;
    function i() public {


         unsafe {
             C(0).g();
         }
    }
}
contract C {
    uint constant r = 10;
    function j() public {


         (uint a; assembly { a := 10 })
    }
}
