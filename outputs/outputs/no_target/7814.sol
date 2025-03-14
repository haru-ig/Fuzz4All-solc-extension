pragma solidity ^0.8.0;
contract TestContract {
    function modWithChecked() public pure returns (uint256){
        (uint256 min, uint256 max) = (1, 128);
        uint40 n = (min / 2) + 1;
        if (n!= (int(min) / 2) + 1) {
            return uint256(n - uint40(min));
        }
        return uint256(n);
    }
    function modWithUnchecked() public pure returns (uint256){
        (uint256 min, uint256 max) = (1, 128);
        uint40 n = min / 2;
        if (uint256(n) > min + 1) {
            return uint256(n - uint40(min));
        }
        return uint256(n);
    }
    function modWithCheckedAndUnchecked() public pure returns (uint256){
        (uint256 min, uint256 max) = (1, 128);
        uint40 n = (min / 2) | 0x8000000000000;
        if (uint256(n) > min + 1) {
            n >>= 24;
            return uint256((int(n) << 24) | ((n - uint40(min)) & (uint40(1) << 25)));
        }
        return uint256(n);
    }
    function overflowWithUnchecked() public pure {
        (uint256 min, uint256 max) = (1, 127);
        uint40 n = uint40(min >> 1) + 1;
        if (n!= uint40(min >> 1) + 1) {
            n = uint40(min);
        }
        uint256 c = uint256(min) * n;
        uint256 z = uint256(min) - n;
        if (c!= uint256(uint40(min) * z)) {
            print("overflowWithUnchecked: ");
            (address a, uint256 b) = (this, c);
            print("  a: 0x");
            printAddress(a);
            print("  c: 0x");
            print160(b);

            revert("Unexpected result");
        }
    }
    function underflowWithUnchecked() public pure {
        (uint256 min, uint256 max) = (1, 127);
        uint40 n = uint40(min >> 1) - 1;
        if (n!= uint40(min >> 1)
