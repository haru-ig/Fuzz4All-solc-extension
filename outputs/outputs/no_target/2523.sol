pragma solidity ^0.8.0;
contract mutationsolidity_legacycontracts0812_v0813 {
  constructor () public {}
}
contract mutationsolidity_legacycontracts0812_v0813 {
    function f() public {

        assert(false);
    }

    function f2() public {
        assert(v == 0);
        revert();
    }
}
contract mutationsolidity_legacycontracts0812_v0813 {
    function f() public {
        revert();
    }

    function f2() public {
        assert(v == 0);
        revert();
    }
}
