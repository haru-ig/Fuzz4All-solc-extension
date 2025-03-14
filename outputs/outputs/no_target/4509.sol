pragma solidity ^0.8.0;
contract C {
    function myFunction() public pure returns (bool v) {
        unchecked {
            v =!true;
        }
        return v;
    }
}
