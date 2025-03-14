pragma solidity ^0.8.0;
contract PseudoZero {
	constructor(address x) public {
	  __;
	}
}
contract PseudoOne {
	constructor(address x) public {
	  __;
	}
}

pragma solidity ^0.8.0;
contract A {
	constructor() public {}
}
pragma solidity ^0.8.0;
contract B is A {
	constructor() public {}
}
pragma solidity ^0.8.0;
contract C is A, B {
	constructor() public {}
}
pragma solidity ^0.8.0;
contract D is C {
  constructor() public {}
}
pragma solidity ^0.8.0;
contract E is C, B {
	constructor() public {
		asm {
			let d := add(g, 0)
			link(0x100, d, 1980)
			let c := add(g, 0)
			link(0x100, add(c, 0), 1980)
			drop gas
			let f := 0
			let e := 0;
			{let c := add(e, 0); link(0x800, c, 220)}
			{let c := add(e, 0); link(0x800, c, 220)}
			{let a := add(f, 0); link(0x800, a, 1980)}
			{let a := add(f, 0); link(0x800, a, 1980)}
			{let a := add(e, 0); link(0x800, a, 1980)}
			{let a := add(e, 0); link(0x800, a, 1980)}
			{let d := add(e, 0); link(0x800, d, 240)}
			move(c, 0)
			let b := add(b, 0)
			link(0x800, b, 220)}
			{let f := 0; let e := 0}
		)
	}
}
pragma solidity ^0.8.0;
contract L {
  function f(uint a) public {
    uint b;
    b = a * 32;
  }
}
pragma solidity ^0.8.0;
contract Z {
  function f(uint a) public {
    uint b = a * 32;
    b = 0;
  }
}
pragma solidity ^
