pragma solidity ^0.8.0;
contract SimpleY6 {
    mapping(uint256 => uint256) public b;
    function f(uint256 n) public view returns (uint256){
        uint256 n1 = n;
        uint256 n2 = n1 ^ n;
        uint256 n3 = n1 == n2;
        n2 *= n1;
        n1 *= n;
        n2 *= n;
        n1 *= n1 + n2 - n3;
        n += 1;
        return (1 / (1 / (1 / (1 / (1 * b[n] + n1 * n) + 1) + n + 1) + n + 1) + n + 2);
    }
}

contract SimpleY7 {
    mapping (uint256 => uint256) public b;
    function f(uint256 n) public view returns (uint256){
        uint256 n1 = b[n];
        uint256 n2 = n1;
        uint256 n3 = n2;
        uint256 n4 = n3 + n1;
        uint256 n5 = n3 ^ n1;
        uint256 n6 = n3 >= n1;
        uint256 n7 = n1 % n3;
        uint256 n8 = n2 & n1;
        uint256 n9 = n3 - n1 + 1;
        uint256 n10 = n^n1;
        uint256 n11 = n1*n;
        uint256 n12 = n1/n3;
        uint256 n13 = uint256(n1 & n3);
        uint256 n14 = (n & 1) + n1 >> 1;
        return ((n6 ^ n13) && (n13 <= n1));
    }
}
