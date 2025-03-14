pragma solidity ^0.8.0;
contract Example {
    uint constant AMOUNT = 2 ether;

    modifier onlyPayable {
        require(
            msg.value == AMOUNT,
            "sender should be send AMOUNT"
        );
        _;
    }

    function exampleFunction() public view returns(uint256) {
        return AMOUNT;
    }

    function getAndLog(uint256 value) public payable {
        uint256 logValue = value;
        emit Log(this, value);
        emit Log(this, logValue);
    }

    event Log(address receiver, uint256 value);
}
