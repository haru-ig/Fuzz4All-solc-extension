pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure returns (int128) {
        assembly {
            let result := gas()
            let _ := result + 1
            result
        }
    }
}
