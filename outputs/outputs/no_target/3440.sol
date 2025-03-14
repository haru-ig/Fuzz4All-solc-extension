pragma solidity ^0.8.0;
contract m04 {
    uint public x = uint128(0x0000112222ff);
    function M4(uint128 _a) public view returns (uint) {
        uint128 a = uint128(0x0000112222ff) / _a;
        require(uint128(x) == uint128(a) * _a);
        return uint(x % _a + a);
    }
}
