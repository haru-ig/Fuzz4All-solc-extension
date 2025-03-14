pragma solidity ^0.8.0;
contract C {
    function myFunction() public pure returns (bool v) {
        v = true;
        unchecked{
            v = false;
        }
        return v;
    }
}
