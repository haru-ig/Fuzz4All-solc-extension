pragma solidity ^0.8.0;
contract Example {
    function x() public pure returns (bool) {
        uint x;
        assembly {
            x := 1
        }
        return 1!= 0;
    }
}
