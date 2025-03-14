pragma solidity ^0.8.0;

contract semanticallyequivalent12
{
    uint16 x = 3;
    uint16 y = 2;
    function test()public {
        x = 1;
        y = 10;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent13
{
    uint16 x = 3;
    uint16 y = 2;
    function test()public {
        x = 1;
        y = 10;
    }
    receive()
    {
        if (x!= 1){

        }
        if (y!= 10){

        }
    }
}

pragma solidity ^0.8.0;
contract fallback
{

    function greetings() public {

    }
}
