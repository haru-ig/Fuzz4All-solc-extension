pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public E;
    mapping(uint => uint[]) x;
    function f() public view {
        for (uint i = 0; i < 8; i++)
            if (i == 1)
                x[i] = new uint[](2);
            else x[i] = new uint[](1);
        E += 1;
    }
}
pragma solidity ^0.8.0;
contract E {
}
pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public E;
    mapping(uint => uint[]) x;
    function g() public view {
        for (uint i = 0; i < 8; i++)
            if (i == 1)
                x[i] = new uint[](2);
            else x[i] = new uint[](1);
        c = 1;
        E += 1;
    }
    function f1() public view {
        while (1 == 1) for (uint i = 0; i < 8; i++)
            if (i == 1)
                x[i] = new uint[](2);
            else x[i] = new uint[](1);
        E += 1;
    }
}
pragma solidity ^0.8.0;
contract E {
    uint public c;
    uint public E;
    mapping(uint => uint[]) x;
    function g() public view {
        for (uint i = 0; i < 8; i++)
            if (i == 1)
                x[i] = new uint[](2);
            else x[i] = new uint[](1);
        c = 1;
        E += 1;
    }
    function f2() public view {
        uint[] memory y = new uint[](4);
        for (uint i = 0; i < 8; i++)
            if (i == 1)
                x[i] = y;
            else x[i] = y;
        E += 1;
    }
}
