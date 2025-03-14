pragma solidity ^0.8.0;
contract Mutate {
    uint256 a;
    uint256 b;
    uint256 c;
    uint256 d;
    uint256 e;
    uint256 f;
    uint256 g;
    uint256 h;

    uint256 max;
    uint256 min;

    function setMax() public {
        max = max(a, b);
        max = max(max, c);
        max = max(max, d);
        max = max(max, e);
        max = max(max, f);
        max = max(max, g);
        max = max(max, h);
    }
    function setMin() public {
        min = min(a, b);
        min = min(min, c);
        min = min(min, d);
        min = min(min, e);
        min = min(min, f);
        min = min(min, g);
        min = min(min, h);
    }
    function mutate() internal {
        a = a + b;
        b = b * 2;
        c = c + d;
        d = d * 2;
        e = e - f;
        f = f - g;
        g = g - h;
        h = h - 1;
    }
    function mutateMax() public {
        mutate();
        max = max(max, a);
        max = max(max, b);
        max = max(max, c);
        max = max(max, d);
        max = max(max, e);
        max = max(max, f);
        max = max(max, g);
        max = max(max, h);
        if (max == min)
            mutateMax();
    }
    function mutateMin() public {
        mutate();
        min = min(min, a);
        min = min(min, b);
        min = min(min, c);
        min = min(min, d);
        min = min(min, e);
        min = min(min, f);
        min = min(min, g);
        min = min(min, h);
        if (min == max)
            mutateMin();
    }
}
contract MutatedMath {
    function max(uint a, uint b) public pure returns (uint) {
        if( a > b ) {
            return a;
        }
        return b;
    }
    function min(uint a, uint b) public pure returns (uint) {
        if( a < b )
