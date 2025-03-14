pragma solidity ^0.8.0;
contract Caller
{
    uint256 public account1;
    constructor(uint256 _account1) public
    {
        account1 = _account1;
    }
    fallback function() external payable
    {
        account1 += msg.value;
    }
    function doCall() public
    {
        account1--;
        require(account1 >= 0);
        assembly {
            mstore(0xab6eead3, 0)
        }
        msg.sender.transfer(msg.value);
    }
}
