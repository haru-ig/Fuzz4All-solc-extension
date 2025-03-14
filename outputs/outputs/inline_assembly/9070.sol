pragma solidity ^0.8.0;
contract C
{
    function setVar() public {
        Lib.div(Lib.add(2, 3), 4);
    }
}
