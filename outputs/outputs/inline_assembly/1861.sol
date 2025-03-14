pragma solidity ^0.8.0;
contract mutatedX {
    uint256 public x;
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
    }
    function func3() public {
        x = 3072;
    }
    function func4() public {
        x = 211*x + 1432;
    }
}
