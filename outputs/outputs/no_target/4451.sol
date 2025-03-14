pragma solidity ^0.8.0;
contract L {
    function myFunction() public pure returns (uint160) {
        require(false);
        assembly {
            r := mul(2, 42)
            r := add(r, r)
            r := add(r, r)
            r := add(r, r)
            r := add(r, r)
            r := add(r, r)
            r := add(r, r)
            r := add(r, r)
            r := add(r, r)
            r := add(r, r)
            r := add(r, r)
        }
        return r;
    }
}
