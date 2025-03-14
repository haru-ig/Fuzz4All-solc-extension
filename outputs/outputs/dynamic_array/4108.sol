pragma solidity ^0.8.0;
contract C {
    uint[] public test;
    uint[] public test2;
    uint[] public test3;
    uint[] public test4;

    function f() public {
        test[0] = uint();
        test2[0] = uint();
        test3[0] = uint();
        test4[0] = uint();
        test[1] = uint();
        test3[1] = uint();
    }
}
