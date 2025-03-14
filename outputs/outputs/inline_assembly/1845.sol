pragma solidity ^0.8.0;
contract Test {
    uint256 value0;
    uint256 value1;
    uint256 value2;
    uint256 value3;
    uint256 value4;
    function init() public {
        value0 = 1;
        value1 = 1;
        value2 = 1;
        value3 = 1;
    }
    function inc(uint256 i) public {
        uint256 res = 1;
        for (uint256 j = 0; j < i; j++) {
            res = res + 1;
        }
        emit CallBack0(i, res);
    }
    function inc1(uint256 i) public {
        uint256 res;
        for (uint256 j = 0; j < i; j++) {
            res = res + 1;
        }
        emit CallBack1(i, res);
    }
    function inc2(uint256 i) public {
        uint256 res = 4;
        for (uint256 j = 0; j < i; j++) {
            res = res + 1;
        }
        emit CallBack2(i, res);
    }
    function inc3(uint256 i) public {
        uint256 res;
        for (uint256 j = 0; j < i; j++) {
            res = res + 1;
        }
        emit CallBack3(i, res);
    }
    function inc4(uint256 i) public {
        uint256 res = 4;
        for (uint256 j = 0; j < i; j++) {
            res = res + 1;
        }
        emit CallBack4(i, res);
    }
}
contract Example {
    uint256 internal x;
    function func() public {
        x = 1;
    }
    function func2() public {
        x += 1;
    }
    function func1() public {
        x += 1;
    }
}
