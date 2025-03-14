pragma solidity ^0.8.0;
contract C {
    function myFunction() public returns (bool) {
        unchecked{
            if(true) {
                return true;
            }
        }
    }
}
