pragma solidity ^0.8.0;
contract semanticallyequivalent10
{
    function test() public{
        x = 0;
        x = 1
    }

    uint x;
}

pragma solidity ^0.8.0;
contract semanticallyequivalent11
{
    uint x;
    function test(uint xx) public {
        if(xx > x) {
            x = xx;
        }
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent12
{
    uint x;
    function test() public {
        if(x > 0 && x < 2) {
            x++;
        }
    }
}
