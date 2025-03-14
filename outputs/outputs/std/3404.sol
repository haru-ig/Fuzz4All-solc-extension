pragma solidity ^0.8.0;
interface Array {
    function pushFirst(uint val) public;
    function set(uint val) public;
    function check() public;
    function pop() public;
    function checkPop() public;
    function popPop() public;
    function checkPopPop() public;


    function replace2(uint val) public {
        set(val);
        replace2(val);
    }

    function replace3(uint val) public {
    }

    function set2(uint val2) public {
    }

    function set3(uint val2) public {
    }

    function checkReplace2(uint val2) public {
        replace2(val2);
        checkReplace2 (val2);
    }

    function checkReplace3(uint val2) public {
        replace3 (val2);
        checkReplace3 (val2);
    }

    function checkSet2(uint val2) public {
        set2(val2);
        checkSet2 (val2);
    }

    function checkSet3(uint val2) public {
        set3(val2);
        checkSet3 (val2);
    }


































    }
