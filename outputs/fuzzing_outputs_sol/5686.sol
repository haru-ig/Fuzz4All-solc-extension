pragma solidity ^0.8.0;
contract semanticallyequivalent12
{
    function test()public {
        uint16 x = 2;
        uint16 y = 3;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent13 is semanticallyequivalent11, semanticallyequivalent12{}
