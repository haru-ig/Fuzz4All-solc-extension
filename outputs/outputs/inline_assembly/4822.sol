pragma solidity ^0.8.0;
contract mutator {
	struct mutator {
		uint h;
		uint i;
	}
	mutator public data = mutator(0, 2);
	constructor() public {
		{
			data.h = 0;
			{
				data.i = data.i + 1;
			bytecode_modify(data);
			}
		}
	}
	function bytecode_modify(mutator storage m) private {
		if(m.i <= 0) {
			{
				m.i = m.i;
			bytecode_modify(m);
			}
		}
	}
}
