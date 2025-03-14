pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure returns (uint160) {
        uint160 r;
        assembly {
            r := mul(2, 42)
        }
        return r;
    }
}
