pragma solidity ^0.8.0;
contract S2 {
    uint256 private a;
    uint256 private b;
    function s1() public {
        a++;
        b=(a * a)+(a * (a+1));
    }
    function s2() public {
        a++;
        b=a*10;
    }
    function changeX() public {
        a += 10;
        b = a * 1337;
    }
}
