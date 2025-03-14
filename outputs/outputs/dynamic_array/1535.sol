pragma solidity ^0.8.0;
interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
}
contract Crowdsale {
    uint256 public amountRaised;
    function buyTokens() public payable returns (bool);
}

pragma solidity ^0.8.0;
contract Main {
    address public CrowdsaleAddr = 0x19066A9290A95574f3e4744B21e5A401db40B649;
    IERC20 public token = IERC20(0x00);
    Crowdsale public crowdsale = Crowdsale(uint(CrowdsaleAddr));
    function main(uint wit) public payable returns (bool) {
    	require(crowdsale.buyTokens.value(0.01)(100000000000000), "error 1");
    	require(wit == 0, "error 2");
    	return true;
    }
}
