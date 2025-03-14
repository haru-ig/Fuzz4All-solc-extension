pragma solidity ^0.8.0;
contract MyContract {
	S[3] s;
	constructor() { s = new S[3] (0, 0, 0); s[0]; }
	function f() public {
		s[0];
		s[0] = 0;
		}
	}

pragma solidity ^0.8.0;


contract MyContract {
	struct Point { int x; int y; }
	Point point;
	constructor() {
	}
	function f() public {
	}
	}

pragma solidity ^0.8.0;


contract MyContract {
	struct Point { int x; int y; }
	Point point;
	constructor() {

		point = new Point(0, 0);
		}
	function f() public {
		point.y;
		point.x;
		point.x = 0;
		}
	}

pragma solidity ^0.8.0;
contract MyContract {
	struct Point { int x; int y; }
	Point p0;
	Point p1;
	constructor() {

		p0 = new Point(1, 2);
		p1 = new Point(2, 3);
		}
	function f() public {

		p0.x;

		p1.x;
		p1.x = 0;

		p0.x;
		}
	}
pragma solidity ^0.8.0;
contract MyContract {
	struct T { int x; }
	T t0;
	T t1;
	T t2;
	T t3;
	constructor() {

		t0 = new T(0);

		t1 = new T (4);

		t2 = new T (8);

		t3 = new T (-4);
		}
	function f()
