pragma solidity ^0.8.0;
contract C1 {
    address public receiver;
    function c1(uint _n) public {
        for (uint i=_n; i>0; i--) {
            receiver = address(new C2());
			a.push(0);
            b.push([]);
        }
    }
}

pragma solidity ^0.8.0;
contract C2 {
    uint256[] public a;
    uint256[][] public b;
    uint256[] public c;
    constructor() {
        uint256 x = 1;
        b.push([20,42]);
		c.push(42);
        c.push(42);
        c.push(42);
        c.push(42);
    }
}
