pragma solidity ^0.8.0;
contract MultipleReturn {
    uint private x;
    uint public y;
    uint public num;
    bool returned = false;
    uint public test;
    function multipleReturn() public {
        returned = true;
    }
    function multipleReturn2() public {
        num = 3;
        returned = true;
    }
    function multipleReturn0x542modified() public {
        num = 1;
        returned = true;
    }
    function multipleReturn0x541modified() public {
        num = 2;
        returned = true;
    }
    function multipleReturn0x540modified() public {
        num = 3;
        returned = true;
    }
    function multipleReturn0x02modified() public {
        num = 4;
        returned = true;
    }
    function multipleReturn3modified() public {
        x = 7;
        num = 5;
        returned = true;
    }
    function noRet() public {
    }
    function modifyReturn() public {
        returned = false;
        test = 3;
    }
    function modifyReturnReturn() public {
        test = 4;
    }
    function modifyReturnReturnModify() public {
        num = 8;
        returned = true;
        test = 6;
        returned = false;
    }
    function modifyReturnReturnModified() public {
        num = 9;
        returned = true;
        test = 6;
        returned = false;
        num = 7;
        returned = true;
    }
}
