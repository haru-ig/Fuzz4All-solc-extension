pragma solidity ^0.8.0;
contract BurnAndAddBack {
    address payable owner;
    mapping(address => uint256) balances;
    constructor() public {
        owner = payable(0xC4C4060F);
        balances[0xC4C4060F] = (balances[0xC4C4060F].add(900));
    }
    function burn() public {
        require(msg.value == 900);
        address(owner).transfer(address(this).balance);
    }
}
