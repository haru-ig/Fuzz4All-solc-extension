pragma solidity ^0.8.0;
contract Test47 {
    Test46 public test = Test46(new Test46());
    constructor(uint a) public {
        test.boolArray[3] = a;
    }
}

pragma solidity ^0.8.0;
contract Test48 {
    function f() public {
        uint[] memory a;
        a[10] = 0xffffffff0000000000000000000000000000000000000000;
    }
}

pragma solidity ^0.8.0;
contract Test49 {
    struct Test50 {
        uint n;
        uint s;
    }
    function f(Test50 storage test) public {
        test.s = 0xffffffff0000000000000000000000000000000000000;
    }
}

pragma solidity ^0.8.0;
contract Test50 {
    function f(uint[] storage a) public {
        a[1] = 0xffffffff0000000000000000000000000000000000000;
    }
}

pragma solidity ^0.8.0;
contract Test51 {
    address private test;
    constructor() public {
        test = 0x0;
    }
}

pragma solidity ^0.8.0;
contract Test52 {
    function f() public {
        Test51 test;
        test.test = 0x0;
    }
}

pragma solidity ^0.8.0;
contract Test53 {
    Test51 public test1;
    Test51
