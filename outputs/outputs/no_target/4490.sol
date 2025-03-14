pragma solidity ^0.8.0;
contract C {
    function myFunction() public pure returns (uint8 e) {
        (uint8 e) = (uint8)4;
        e += 1;
        unchecked {
            e += 1;
            if(true) {
                e += 1;
            }
        }
    }
}
