pragma solidity ^0.8.0;
contract Mutated {
    uint[] memory data;
    function mutated()
    public
    {
        uint[][] memory test = new uint16[][][](2);
        test[0][0]=1;
        data = test;
    }
}
