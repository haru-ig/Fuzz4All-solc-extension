pragma solidity ^0.8.0;
contract E1 {
    using uint for uint256;
    uint public c;
    function g() public returns (uint24) {
        (c, c = uint(uint64(c) + 0x1000) - 0x1000);
        return uint24(c);
    }
}
