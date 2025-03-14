pragma solidity ^0.8.0;
contract Lottery {
    address payable winner;
    uint256 prizes;
    address payable[] bidders;
    mapping (address => uint256) internal lotteries;


    constructor(uint256 prizes_) {
        prizes = prizes_;
        for(uint i = 0; i < prizes; i++) {
            lotteries[msg.sender] = 0;
        }
    }

    function () external payable {
    }

    function () external {
    }
}
