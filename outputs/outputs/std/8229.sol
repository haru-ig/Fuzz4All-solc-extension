pragma solidity ^0.8.0;
contract Array {
		address[2] public a;
        uint[2] public b;
        function setValues() public {
           a[0] = 0x20F2AFCE488C6AD3C46B873BA3C6502F0FF35660;
           a[1] = 0xE0802678210B95608026AEA3BB86CF6E33E1A4A;
           b[0] = 0x20F2AFCEDA7DB23C89F98778FDB6691362B5DA39;
           b[1] = 0xF17A3F6AB00226081F6A2A69B76536700F2F271B;
        }
    }

pragma solidity ^0.8.0;
contract ArraysContract {
	uint[2] private a;
	uint[3] private b;
	address[2] private c;
	mapping(address => bool) private contracts_;
	function newArrayContract() public {
		contracts_[address(new Array)] = true;
	}
	function newMultiprecisionContract() public {
		contracts_[address(new Multiprecision)] = true;
	}
	function setValues() public {
		a[0] = 0x402AFCEFC91423FE09833C65B6E65B7F3E7FDDB9;
		b[0] = 0x817FE1AA46A7F53CF47A14AF4E8EF7B6AD45E25C;
		c[0] = 0xF1E0C0037877D4E3DB2628A2D9D59B79F42FAA64;
		a[1] = 0xB3982C4F776440A3B4085BAB32E23741DF041551;
		b[1] =
