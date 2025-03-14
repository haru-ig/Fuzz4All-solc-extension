pragma solidity ^0.8.0;
contract T8FS_mod2 {
    uint16 x = 53;
    uint16 y = 6;
    uint16 z;

    function setZero(uint16 t) public {
        _();
        y = t;
        _;
    }
    function test() public {
        _();
        z = 4;
        _;
    }
    function setOne(uint16 t) public {
        _();
        y = t;
        _;
    }
    function test2() public {
        _();
        z = 8;
        _;
    }
    function setTwo(uint16 t) public {
        _();
        z = t;
        _;
    }
    function test3(uint16 t1, uint16 t2) public {
        _();
        z = t1;
        _;
    }
    function setThree(uint16 t) public {
        _();
        z = t;
        _;
    }
    function test4(uint16 t1) public {
        _();
        z = t1;
        _;
    }
    function setFour(uint16 t) public {
        _();
        z = t;
        _;
    }
    function test5(uint16 t1, uint16 t2) public {
        _();
        z1 = t1;
        _;
    }
    function setFive(uint16 t) public {
        _();
        z2 = t;
        _;
    }
}
