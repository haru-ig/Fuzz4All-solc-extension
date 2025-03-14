pragma solidity ^0.8.0;
contract Mutator5
{
        mapping(address=>bool) public map;
        constructor()
        {
                for (uint i=0; i<100; ++i)
                {
                        map[address(new Mutator2())] = true;
                }
                require(map[msg.sender]);
        }
}
