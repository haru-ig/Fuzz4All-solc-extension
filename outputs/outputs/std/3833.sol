pragma solidity ^0.8.0;
contract Array {
}
contract Convert {
    function uintAsString(uint256 _n) internal pure returns (bytes memory) {
        if (_n == 0) return bytes("");
        uint Digit = _n % 10;
        bytes memory _UintAsString = new bytes(4);
        if (Digit < 10) {
            _UintAsString = bytes(1);
        } else {
            uint x = _n / 10;
            Digit = _n % 10;
            _UintAsString[3]=digit(x);
            Digit = x / 10;
            _UintAsString[2] = digit(Digit);
            Digit = x % 10;
            _UintAsString[1] = digit(Digit);
            Digit = _n % 10;
            _UintAsString[0] = digit(Digit);
        }
        return _UintAsString;
    }
    function digit(uint8 _d) internal pure returns (bytes memory) {
        bytes memory _d10 = bytes(10);
        bytes memory _d16 = bytes(16);
        bytes memory _d20 = bytes(20);
        bytes memory _d26 = bytes(26);
        bytes memory _d32 = bytes(32);
        bytes memory _d36 = bytes(36);
        bytes memory _d40 = bytes(40);
        bytes memory _d46 = bytes(46);
        bytes memory _d52 = bytes(52);
        bytes memory _d58 = bytes(58);
        bytes memory _d64 = bytes(64);
        bytes memory _d67 = bytes(67);
        bytes memory _d73 = bytes(73);
        bytes memory _d78 = bytes(78);
        bytes memory _d83 = bytes(83);
        bytes memory _d88 = bytes(88);
        bytes memory _d95 = bytes(95);
        bytes memory _d98 = bytes(98);
        bytes memory _d99 = bytes(99);
        if (_d <= 9) {
            if (_d == 0) return bytes("");
            else return bytes("0");
        } else if ((_d >= 10) && (_d <=
