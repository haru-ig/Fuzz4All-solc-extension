pragma solidity ^0.8.0;

contract Test {

    mapping(address => address payable[]) public balances;

    mapping(string => uint256) public names;


    mapping(address => uint) public nameIndex;

    function payer(uint i) external view returns (address payable payer, uint256 balance) {
        address payer_;
        uint256 balance_;
        require(balances[msg.sender][i]!= address(0x0));

        (payer_, balance_, uint80) = balances[msg.sender][i];
        return (payer_, balance_);
    }
}
