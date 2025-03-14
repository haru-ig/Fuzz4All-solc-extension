pragma solidity ^0.8.0;
contract GasUsed {
	mapping (address => uint) public balances;
	struct Slow {
		uint a;
		uint b;
	}
	constructor() public {
		balances[msg.sender] = uint(msg.value);
	}
	function greet(
        Slow memory s
    )
        public
    {
        while (true) {
            address payable receiver = payable(s.a, s.b);

            gasprice = gasprice / 2;
            receiver.transfer(balances[address(this)] - s.a);
        }
    }
}
