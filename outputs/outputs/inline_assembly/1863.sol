pragma solidity ^0.8.0;
contract mutatedX {
    uint256 internal x;
    function func() public {
        x = 1;
        func1();
        uint256 i = 1;
        uint256 n = 1;
        while (n > i) {
            x += n;
            i++;
            n += 2;
            func2();
        }
    }
    function func1() public {
        x = 10;
        func4();
        uint256 j = 1;
        uint256 m = 1;
        while (m > j) {
            x *= m;
            j++;
            m += 2;
            func3();
        }
    }
    function func2() public {
        x = 50;
        func3();
        uint256 k = 1;
        uint256 n = 6;
        while (n > k) {
            x += n;
            k++;
            n += 2;
            func4();
        }
    }
    function func3() public {
        x = 3072;
        func4();
    }
    function func4() public {
        x = 211*x + 1432;
        x = mod(x,2^27);
        x = x / 2^270;
    }
    function mod(uint256 a,uint256 b) public pure returns(uint256){
        return (
