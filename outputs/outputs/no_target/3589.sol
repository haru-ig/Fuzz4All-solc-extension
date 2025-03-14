pragma solidity ^0.8.0;
contract g120_2 {
    uint public s1;
    uint public s2;
    uint256 public s3;
    uint256 public s4;
    uint256 public s5;
    constructor() public {
        s1 = s1 + 1;
        (s1, s2, i) = (s1 + s1, s1 + s1, s1 + s1);
        s1 += 3;
        s1 = uint(s2) % uint(s1);
        s1 = uint(s1) % uint(s2);
        s1 = uint(s1 + s1) % uint(s1);
        s1 = uint(s2 + s1) % uint(s2);
        s1 = uint(s1) + uint(s1) % uint(s2);
        s1 = uint(s1) + uint(s2) % uint(s2);
        s1 += s2;
        s1 *= 2;
        s1 += 3;
        s1 = uint(s3) + uint(s3) % uint(s1);
        s1 = uint(s3) + uint(s4) % uint(s3);
        s1 = uint(s3) % uint(s1);
        s1 = uint(s4) % uint(s3);
        s1 = uint(s1) + uint(s2) % uint(s3);
        s1 *= 2;
        s1 += 3;
        s1 = uint(s4) + uint(s4) % uint(s4);
        s1 = uint(s3) + uint(s1) % uint(s4);
        s2 = uint(s1) + uint(s1) % uint(s1);
        s1 += s2;
        s1 *= int(s1) % int(s3);
        s1 += 3;
        s1 = uint(s5) + uint256(uint80(uint(uint(s5)).toString()) + uint(uint(s5)).toString()) % 1;
        s1 = uint(s5) + uint256(uint80(uint(uint(s5)).toString()) % 2) % 2 + uint(uint(s5)).toString();
    }
}
