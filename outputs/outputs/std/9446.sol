pragma solidity ^0.8.0;

contract SemanticEqual
{
    uint a = 0xe47c26079b9a26e68a1385551fd28f6522219e88a5d436972ec23ba4e6575fe96931652ab83eb49c520c1f5fb22a2a79025746a4ddedb986a5a7cf67155f70e1b745759075852d43e8ff8f346ba7c6a751ef86fe4c6af9654bb5e70a0f65cc067298c4b8b1d22f40a971;

    function sum(uint a, uint b) public returns(bool)
    {
        a = a > b? a : b;
        b = a < b? b: a;
        if(a+b >= 0 && a < b)
        {
            return true;
        }
        return false;
    }
}

contract ExampleMemory
{
    function getArrayAddress() public pure returns (uint256)
    {
        return memory;
    }

}
