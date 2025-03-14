pragma solidity ^0.8.0;
contract semanticallyequivalent4
{
}
library mylib
{
    uint public constant x = 42;
    function f() public{
        uint z = x;
    }
}

pragma solidity ^0.8.0;
contract simple
{
    function f(uint) public {
        x;
        if (0) {
        uint y = 1;
        } else {
        y;
        uint z = 2;
        }
    }
}


pragma solidity ^0.8.0;
contract Caller extends semantics.semanticallyequivalent6 fallback(caller.semanticallyequivalent4)
{
    function f() public payable{
        uint a = a;
        uint c = c;
    }
    function f2(uint) public {
        uint b = b;
    }
}
