pragma solidity ^0.8.0;
abstract contract Contract {
    function publicFunc() public pure {}
    function internalFunc() internal pure {}
    function protectedFunc() protected pure {}
    function privateFunc() private pure {}
}
