pragma solidity ^0.8.0;
library Test {
    function func() public pure returns {
        assembly {

            revert(0)
        }
    }
}
