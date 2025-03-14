pragma solidity ^0.8.0;
interface semanticallyequivalent20
{
    function test()public payable returns (uint);
}

pragma solidity ^0.8.0;
contract semanticallyequivalent11
{
    uint public a;
    function test()public {
        a = 1;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent21
{
    uint public a;
    function test()public {
        a = 1;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent101
{
    uint16 public y;
    function test()public {
        y = 1;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent201
{
    uint public a;
    function test()public {
        a = 1;
    }
}
