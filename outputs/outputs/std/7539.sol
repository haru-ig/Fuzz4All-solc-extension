pragma solidity ^0.8.0;
contract Semantic4 {
    function semantic4() public pure returns (uint) {
        uint x = 10;
        uint256 b = 2;
        x -= 1;
        b += x;
        b += 1;
        x *= b;
        x += 2;
        uint256 c = 0;
        for (int i = 1; i <= x; i++)
            c++;
        c = 1 + c;
        c = c + 1;
        for (i = 1; i <= 2*x; i += 1)
            c += 1;
        c = x * x;
        uint d = 0;
        for (uint i = 1; i <= c; i++)
            d++;
        d = 2 * r;
        return (d) + a;
    }
}
