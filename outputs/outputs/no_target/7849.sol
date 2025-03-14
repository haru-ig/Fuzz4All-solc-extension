pragma solidity ^0.8.0;
contract c12 {
    constructor() public {
    }
    function f() public pure {
        uint256 val = (uint256(-1));
        if (val > uint256(~uint8(0))) revert();
    }
}
contract c13 {
  function f() public pure {
    uint256 val = 0;
    uint40 x;
    x = 1;
  }
}
contract c14 {
  constructor() public {
  }
  function f() public pure {
    uint256 val = uint8(1);
    uint40 x;
    x = 1;
  }
}
contract c15 {
    modifier m15() {
        bool test = false;

        test = test();
        if (!test) revert();
        _;
    }
}
contract c16 {

contract c16a {
   constructor() {
     if (msg.sender!= _contract("c12").address) {
       _contract("c12").f();
       assert(false);
    }
    }

    function f() public pure{
       uint256 val = (uint256(-1));
       if (val > uint256(~uint8(0))) revert();
    }
}
}
library TestMutator19 {
    enum TESTS { SINGLE };
    function main1(TESTS test) public pure {
        bytes memory buffer = "09000036000036900000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
