pragma solidity ^0.8.0;
contract HelloWorld {
    function multiplyByConstantValue(uint valueValue) public {
        a = int256(a) + int256(valueValue);
        uint m = a * valueValue;
        uint n = a + valueValue;
        uint hi2 = (uint256(a) * valueValue + uint256(a)) >> 8;
        uint lo2 = (n * n + uint256(a)) >> 8;
        uint g = (lo2 - hi2) + uint256(a);
        uint h = (a << 1) + valueValue;
        uint i = int256(g) + int256(h);
        uint j = int256(g) + int256(i);
        uint k = (i + int256(j));
        uint lo = (uint256(g) * uint256(g) + int256(a)) >> 24;
        uint hi = (lo >> 1) + ((lo & 1) + uint256(g << 7)) >> 1;
        if (h < k || (h == k && lo >=hi)) {
            require(h >= k, "overflow");
        }
    }
}
