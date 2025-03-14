pragma solidity ^0.8.0;
contract Semantics {

    function f(uint a, string memory b, uint) public pure {}

    function f(uint a, string memory b, uint) public pure {}
}

pragma solidity ^0.8.0;
import "./Semantics3.sol";
contract Semantics2 is Semantics3 {
    function f(uint a, string memory b, uint) public pure override {}
}
