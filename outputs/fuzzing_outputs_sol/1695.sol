pragma solidity ^0.8.0;
contract SimpleMutatedFallback {
    bytes32 private constant FALLBACK_ADDRESS = keccak256(abi.encodePacked("123"));
    constructor() {

        FALLBACK_ADDRESS = address(0);
    }

}



pragma solidity ^0.8.0;
contract Caller {
    uint256 public value = 100;

    bool withdrawalCompleted = false;

    function() external pure returns (uint256){
        return value;
    }

    modifier onlyFirstWithdrawalAddress {

        require(msg.sender == address(this));
        _;
    }

    function withdraw(uint256 weiAmount)
        external
        onlyFirstWithdrawalAddress
        {
            value = weiAmount;
            withdrawalCompleted = true;
        }

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    function completeWithdrawal() public returns (bool) {
        require(withdrawalCompleted);
        withdrawalCompleted = false;
        return true;
    }
}
