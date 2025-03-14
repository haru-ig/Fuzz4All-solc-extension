pragma solidity ^0.8.0;
contract C {
    function myFunction() pure protected returns (bool v) {
        unchecked{
            v = true;
        }
        return v;
    }
}
