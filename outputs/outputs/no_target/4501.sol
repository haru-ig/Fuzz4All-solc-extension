pragma solidity ^0.8.0;
library L {
    function myLibraryFunction() pure public  returns (bool v) {
        if(true) {
            unchecked{
                v = true;
            }
        }
        return v;
    }
}
