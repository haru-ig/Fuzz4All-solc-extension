pragma solidity ^0.8.0;
contract S6
{
    uint[1000] private bak;
    function foo() public pure{
        bar();
    }
    function bar() public pure{
        baz();
    }
    function baz() public pure{
        bak[bar.length] = 2;
    }
}

pragma solidity ^0.8.0;
contract MyContract
{
    constructor()
    {
        address[2][7] memory arr = new address[](500, 4, 80, 90, 79, 50, 25, 68, 344, 169);
        for(uint _i = 0; _i < arr.length; _i++)
        {
            bak[msg.sender][_i] = 5;
            if(arr[_i] == address(0))
            {
                bak[msg.sender][_i] = 7;
            }
        }
    }
}
