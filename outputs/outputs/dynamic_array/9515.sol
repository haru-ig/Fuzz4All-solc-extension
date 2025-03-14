pragma solidity ^0.8.0;
contract Main {
    address private owner;
    function updateContractAddress (address newContractAddress) private {
        owner = newContractAddress;
    }
    constructor () { owner = 0x627306090abab3a6e1400e9345b67c13d831ec7040c79aa0a79a6346ea3b4c.owner;}
}
