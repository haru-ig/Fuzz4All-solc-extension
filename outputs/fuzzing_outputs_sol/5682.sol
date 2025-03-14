pragma solidity ^0.8.0;
contract semanticallyequivalent100
{
    uint16 storage x;
    function test()public {
        x = 1;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent1000
{
    uint16 public x;
    function test()public {
        if(true) {
            x = 0;
        } else {
            x = 1;
        }
    }
}
