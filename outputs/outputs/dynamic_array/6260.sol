pragma solidity ^0.8.0;
library l {
	struct s {
		uint a;
		uint b;
	}
	function set(string memory m) public pure {
		s memory s_new = s({a: 0x00, b: 0x10});
		s_new.a = uint(m.copy());
		s_new.b = 0x10;
		s_new.a = 0x20;
	}
}

pragma solidity ^0.8.0;
contract t {
	constructor()
	{
		s[] memory s_alloc = l.get();
		s_alloc[0] = l.get();
		s_alloc[1] = l.get();
		l.set(s_alloc);
	}
}

contract a {
	function f(uint i) public pure {
		t t_alloc;
		t_alloc = t();
		t_alloc.f(i);
	}
}
