pragma solidity ^0.8.0;
contract C {
    function myFunction() pure public returns (bool v) {
        if(true) {
            unchecked{
                v = true;
            }
        }
        return v;
    }
}
