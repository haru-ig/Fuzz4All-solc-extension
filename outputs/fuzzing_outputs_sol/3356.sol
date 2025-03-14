pragma solidity ^0.8.0;
contract S {
    function callBack() public pure {
        revert("test");
    }
    function revertedMsg() public pure {
        revert("reverted");
    }
    function pureMsg() public pure {
        pure(0);
    }
    function pureOverload() public pure {
        pure(new Address(0x0));
    }
    function pureFunction() public pure {
    }
}
