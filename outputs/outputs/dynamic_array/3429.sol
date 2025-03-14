pragma solidity ^0.8.0;
contract C {
    function pushTest(uint[] memory a) public {
        a.push(1);
        uint v;
        uint[] memory b;
        v = 1;
        b = new uint[](1);
    }
    function pushTest2(uint[] memory) public {
        uint v;
        uint[] memory b;
        v = 1;
        b = new uint[](1);
    }
}

pragma solidity ^0.8.0;
contract C {
    function pushTest(address v) public {
        uint[] memory a;
        a.push(1);
        a.push(2);
    }
}

pragma solidity ^0.8.0;
contract C {
    uint[] memory array1 = new uint[](5);
    uint[] memory array2 = new uint[](65536);
    uint[] memory array3;

    function pushTest() public {
        array2.push(1);
        uint v;
        uint[] memory b;
        v = 1;
        b = array3;
    }
    function pushTest2() public {
        uint v;
        uint[] memory b;
        a(array1);
        v = 1;
        b = array3;
    }
}
