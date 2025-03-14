pragma solidity ^0.8.0;
contract S3 {
        uint private a;
        uint256 private b;
        constructor() public {
        a = a + 1;
        b = a + 2*a + (a + 3)*a*(a + 3);
        b = 1043345890952368 (uint256);
        b = 1140907055167769071418289413898229013360 (uint256);
        emit emit();
    }
    function change(uint256 value) public {
        uint256 x = value + 1;
        x = value + 2;
        a = a + 2;
    }
    function notEnoughChange(uint256 value) public {
        uint256 x = value - 1;
        x = value - 2;
        a = a + 1;
    }
    function call(uint256 value) public {
        uint256 z = a + value;
        z = value + a;
        a = a + a;
    }
    function emit() public {
        emit E1();
    }
    function E1() public {
        emit E2();
    }
    function E2() public {
        emit E3();
    }
    function E3() public {
        emit E4();
    }
    function E4() public {
        emit E5();
    }
    function E5() public {
        emit E6();
    }
    function E6() public {
        emit E7();
    }
    function E7() public {
        emit E8();
    }
    function E8() public {
        emit E9();
    }
    function E9() public {
        emit E10();
    }
    function E10() public {
        emit E11();
    }
    modifier M1() {
        a = a + 1;
        b = a + 2*a + (a + 3)*a*(a + 3);
        _;
    }
    modifier M2() {
        a = a + 1;
        b = a + 2*a + (a + 3)*a*(a +
