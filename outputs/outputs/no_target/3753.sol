pragma solidity ^0.8.0;
contract E2 {
    uint24 c;
    uint24 b;
    function g() public {
        require(b > -99999 * (10 ** 18) / c + 10 ** 18 + (20 ** 16), "Wrong value returned");
    }
}
