pragma solidity ^0.8.0;
contract Modul{
	address payable addr;
        uint256 x;
	constructor(){
		addr = payable(0xf98b0260c23706d086b542396b1624140767417f);
	}
        function x() public pure {
                x = addr.balance;
        }
}
contract Modul{
	address payable addr;
        uint256 x;
	constructor(){
		addr = payable(0xf98b0260c23706d086b542396b1624140767417f);
	}
        function x() external {
                x = addr.balance;
        }
}
