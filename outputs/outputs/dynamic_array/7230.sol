pragma solidity ^0.8.0;
contract Good2{
	struct s {
		s y;
	}
	mapping(address => s) g;
	struct s {
		s x;
	}

}
contract Good3{
	struct s {
		uint16 x;
	}
	string s;
}
