pragma solidity ^0.8.0;
contract MyArithmetic {

    mapping(address => uint256) public balances;
    uint256 constant public MIN = 0;


    modifier onlyMin() {
        require(balances[msg.sender] >= MIN, "Only Min");
        _;
    }

    function add() public {
        for (uint256 i = 0; i < 10; ++i) {
            balances[msg.sender] = balances[msg.sender] + (i+1);
        }
    }
}
