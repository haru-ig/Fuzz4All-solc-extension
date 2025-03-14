pragma solidity ^0.8.0;
contract mutatedfallback
{
    receive() external payable {}
}


pragma solidity ^0.8.0;
contract callfunction
{
    func() external pure returns (bool) {
        return true;
    }
}
