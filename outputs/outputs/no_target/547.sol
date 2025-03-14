pragma solidity ^0.8.0;
contract ContractB is ContractA{
    modifier func1 {
        if(block.timestamp < 1626999600){
            uint256 x;
            x = 5;
            x += 2;
            x -= 3;
            x = 5 - 10000;
            x *= 100;
        }
        _;
    }
}
