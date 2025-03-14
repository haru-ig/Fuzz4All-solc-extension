pragma solidity ^0.8.0;
contract Emulator18 {
    address private owner;
    address[1000] internal ownerAddresses;

    function init() public {
        createAndAddAddress(block.coinbase);
        for(uint i = 0; i < 1000; i++)
        {
            uint x = 50;
            createAndAddAddress(x);
            x = 150;
            for(uint j = 0; j < 1000; j++)
            {
                uint y = 100;
            }
            delete ownerAddresses[x];
            uint q = test();
            delete ownerAddresses[x];
            uint w = test();
        }
    }

    function test() public pure returns(uint) {
        return 5;
    }

    function createAndAddAddress(address a) public {
        if(ownerAddresses[bytes16(a)] == 0)
        {
            ownerAddresses[bytes16(a)] = a;
        }
    }
}
