pragma solidity ^0.8.0;
mapping(address => uint256) contractBalance;
mapping(address => uint256[]) internal contractBalances;
function getContractBalance(address _contract) public returns(uint256) {
    uint256[] memory balances = contractBalances[_contract];
    if (balances.length > 0)
        return balances[balances.length - 1];
    return 0;
}

address[2] addressToBalance;


function getAddressBalance(uint8 _idx) public returns(address) {
    return addressToBalance[_idx];
}

contract StorageHelper
{
    uint256[2] storage contractBalance;
    address[2][] storage contractAddresses;

    constructor() public
    {
        contractBalance[0] = 1;
        contractAddresses[0] = [0, "contract0"];
        contractAddresses[1] = [1, "contract1"];
    }
}

contract MainStorage is StorageHelper
{
    constructor() public {
        contractBalance[1] = 2;
        contractBalances[0].push(100);
    }
}
