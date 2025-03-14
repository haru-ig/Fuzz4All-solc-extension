pragma solidity ^0.8.0;
library N {
    function myFunction() public view returns (uint160) {
        assembly {
            myint128 := mul(2, 42)
        }
    }
}
