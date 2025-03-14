pragma solidity ^0.8.0;
contract Mutated {
    struct Drink {
        uint256 price;
        string name;
    }
    address[] public addresses;
    mapping(address => Drink[]) public drinks;
    mapping(address => uint) public balances;
    function modified1address() public {
        addresses.push(0x31fdFd360554584A623D50480B532D0C2FA4C7a4);
    }
    function modified2address() public {
        balances[0x31fdFd360554584A623D50480B532D0C2FA4C7a4] = 66666;
    }
    function modified3address() public {
        drinks[0x31fdFd360554584A623D50480B532D0C2FA4C7a4].push(
            Drink(15 ** 18, "Coke")
        );
    }
    function modified4address() public {
        addresses[uint(addresses.length)-1] = 0x31fdFd360554584A623D50480B532D0C2FA4C7a3;
        balances[0x31fdFd360554584A623D50480B532D0C2FA4C7a3] = balances[0x31fdFd360554584A623D50480B532D0C2FA4C7a4] + 66666 - 15 ** 18;
        uint256 total =
