pragma solidity ^0.8.0;
contract Semantic0015b {
    uint256 input = 278253552128784173114;
    function f(uint256 input) public {
        uint256 input2 = input + 1;
        input = 5514222042380;
    }
}

pragma solidity ^0.8.0;
contract Semantic0015b2a {
    uint256[6] a = [1, 18, 25826, 555, 258555252234, 34];
    uint256[6] b = getSumAndCompare(a);
    function getSumAndCompare(uint256[6] a ) returns (uint256[6]) {
        a = a + [12, 1];
        uint256[2] sum = a + [545425];
        a = a + [2, 33, 4, 3];
        a = a + [1, 5, 424];
        uint256 resultValue = uint256(sub(a[0], a[4]));
        a = a + [2,3,21];
        resultValue = uint256(sub(sub(sum[0],603), sub(sum[1],1612)));
        resultValue = uint256(sub(add(sum[1],2),mul(mul(sum[0],resultValue),sum[1])));
        a = a + [1, 35, 202];
        assert(a == b);
        return a;
    }
}
