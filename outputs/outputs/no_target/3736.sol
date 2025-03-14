pragma solidity ^0.8.0;
contract E {
    uint24 c;
    function g() public returns (uint24) {
        return 2**24 -1 +c ;
    }
}
