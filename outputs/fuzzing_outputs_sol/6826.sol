pragma solidity ^0.8.0;
contract Mutated {
    constructor() {
      _fail();
    }

    function _fail() private view {
        assert(false);
    }
}
