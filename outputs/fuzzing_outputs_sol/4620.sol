pragma solidity ^0.8.0;
contract ComplexMutated {
    bool c;
    constructor() {
        c = false;
    }
    function shouldBeFalse() public view {
        assert(c);
    }
    fallback() public {
      assert(true);
    }
    receive() payable public {
      assert(true);
    }
}
