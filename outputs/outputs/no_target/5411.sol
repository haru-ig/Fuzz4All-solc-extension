pragma solidity ^0.8.0;
contract B {
    function f(uint256 u) public pure {
        (uint256 v, uint256 w) = (uint256(),uint256.max);
    }
}
pragma solidity ^0.7.0;
contract A {
    function foo(uint8 v0) public {
        (uint8 v, uint8 w) = (uint8(0),uint8(0.max));
    }
}
