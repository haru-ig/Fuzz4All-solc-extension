pragma solidity ^0.8.0;
contract MutatedGeneration20Modified is MutatedGeneration19Modified {
    uint256 a = 820000;
    uint256 b = 601000;
    uint256 c = a + b;
    uint256 d = a - b;
    uint256 e = a * b;
    uint256 f = a / b;
    uint256 g = b % a;
    uint256 h = (a + 5) - (b + 5);
    uint256 i = (a < b)? 1 : 0;
    uint256 j = (a > b)? 1 : 0;
    uint256 k = (a == b)? 0 : 1;
        uint256 l = (c >= d && c >= e)? 1 : 0;
    uint256 m = (d <= e)? 1 : 0;
    uint256 n = (d >= e)? 1 : 0;
    uint256 o = (d ^ e)? 1 : 0;
    uint256 p = (d == e)? 1 : 0;
    uint256 q = (e > d)? 1 : 0;
    uint256 r = (p && d)? 0 : 1;
    uint256 s = (p && e)? 1 : 0;
    uint256 t = (p && g)? 1 : 0;
    uint256 u = (p && e && g)? 1 : 0;
    uint256 v = (d < e || d == e)? 1 : 0;
    uint256 w = (r && d && g && e)? 1 : 0;
    uint256 x = (e >= d || e <= d || e == d)? 1 : 0;
    uint256 y = (e^c)? 1 : 0;
    uint256 z = (g == e)? 1 : 0;
    uint256 numberOfMutations = totalNumberOfIterations * numberOfMutations1 * numberOfMutations2 * numberOfMutations3;
    mapping (uint256=>uint256) values1;
    mapping (uint256=>uint256) values2;
    mapping (uint256=>uint256) values3;

    for(uint256 i = 0; i <= numberOfMutations; i++) {
        uint256 x = values1[randomInt256(totalNumberOfIterations)];
        uint256 y = values2[randomInt256(totalNumberOfIterations)];
        uint256 z = values3[randomInt256(totalNumberOfIterations)];
        uint256 result = x ^ y ^ z;
        if(c == result) {
            values1[randomInt2
