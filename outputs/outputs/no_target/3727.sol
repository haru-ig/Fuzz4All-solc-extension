pragma solidity ^0.8.0;
contract A {
    uint256 d;
    function g() public returns (uint160) {
        uint8 a = _256to160(uint256(address(this).balance));
        require(a % 1 == 0);
        require(a - a + a % 1 == 0);
        assert(a == a);
        return a;
    }

    function _256to160(uint256 a) internal pure returns (uint160) {
        return a == uint256(uint160(0x0000000000000000000000000000000))? 0x00 : a % 160 + 1;
    }
}
contract B {
    uint256 d;
    uint24 c;
    address b;
    function g() public returns (uint8) {
        (uint160 a, uint8 b) = _160tomath(uint160(address(this)));
        require(_256to160(uint256(a)) == uint256(b));
        require(a % 4096 == 0);
        require(b <= b);
        return uint8(_256to160(a) + 1);
    }

    function _160tomath(uint160 a) internal pure returns (uint256, uint8) {
        (uint8 b, uint256 c) = (0, uint256(0x0000000000000000000000000000000));
        for (uint256 i = 0; i < 5; i++) {
            uint256 d = ((a / (uint160(160)**5)) * uint160(160)) + uint160(1);
            a = d % a;
            b = b + i * 4096 + (d / (uint16
