pragma solidity ^0.8.0;
contract MyContract {
	struct S {
	uint s;
	}
	constructor() {
		s.s;
		}
	function f() public {
		s.s;
		s.s = 0;
		}
	}
```

You may have noticed that the last two examples of the previous program use a declaration after the type-declaration in the first line. This declaration is necessary for a number of reasons:

* It makes it clear that the memory of the `struct` will be used to store variable values.

* It does not make any reference to the `struct` itself, so any value assigned to the `struct` can be modified (except when the `struct` field was never assigned to, which is not a use case for the `struct`).

* The `struct` should always be declared *after* the type-declaration in order to avoid variable ambiguity.

The next example is the same as the first example, except for the `s` variable declaration that precedes the `struct`.

```
pragma solidity ^0.8.0;
contract MyContract {
	struct S {
	uint s;
	}
	constructor() {

		s.s;
		}
	function f() public {
		s.s;
		s.s = 0;
		}
	}
