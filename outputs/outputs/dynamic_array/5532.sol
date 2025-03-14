pragma solidity ^0.8.0;
contract Test98 {
    function Test98() public {
    }
    function() external pure {}
    modifier foo() {
        emit fooBar();
        _;
    }
    modifier bar() {
        emit barFoo();
        _;
    }
    function fooBar() public pure {
    }
    function barFoo() public pure {
    }
}
