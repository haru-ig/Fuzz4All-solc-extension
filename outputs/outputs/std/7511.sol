pragma solidity ^0.8.0;
contract WorstCase2 {
    function worstCase0() public pure returns (uint256) {
        uint a = 13;
        uint b = 17;
        uint256 c = a;
        uint256 d = c + b;
        uint256 e = d - c;
        b = b * -951;
        uint x = d;
        c ^= x;
        c -= 100;
        c = b * x;
        c = (2 / x) * a--;
        e = (2 + e) * (c + 1) * c;
        return (2 / a--) * (-210 + -42);
    }
}
contract WorstCase {
    function worstCase0() public pure returns (uint256) {
        uint x = 10000;
        x = 23000;
        for (uint256 i = 0; i < 10000; i++) {
            (uint256 y, uint256 z) = (x, -x);
        }
    }
}
