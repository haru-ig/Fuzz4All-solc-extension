pragma solidity ^0.8.0;
contract Changed {
    struct Data {
        uint x;
    }
    function fTest(Data memory d) public pure returns(address a) {
        (a, d.x) = (0, 3);
        d.x = 3;
        (a, d.x) = (0, 3);
        d.x = 3;
    }
}
address _;
contract AbiEquivalence {
	function fTest(address a, uint v) public {
		Data memory data;
		data.x = 0;
		emit Log(v);
		data.f(1);
		d_test(0, 1);
		uint b = data.x;
		data.x = 4;
        d_test(0, 1);
        uint c = data.x;
        data.x = 4;
        d_test(0, 1);
        data.x = 4;
        d_test(0, 1);
		data.x = 5;
        d_test(0, 1);
        uint d = data.x;
		data.x = 5;
        d_test(0, 1);
        uint e = data.x;
        data.x = 5;
        d_test(0, 1);
		data.f(1);
		d_test(0, 1);
        uint f = data.x;
    }
	function Log(uint v) {
		if (v % 2 == 0) {
			d_test(0, 1);
		} else {
			(, ) = (a_, x_);
			x_ = x_;
		}
        v = x_;
        data.x = 0;
    }
	function d_test(address a, uint _v) internal {
		uint v2;
		uint g;
		v_ = _v;
		(, ) = (a_, _v2_);
		v2 = v_;
		g = v_;
		x_ = v_;
		if (_v <= 1) g = v_;
	}
	uint internal v_;
	uint internal x_;
}
contract AbiEquivalenceChanged {
    function fTest(address a, uint v) public {
        Data memory data;
        (data.y, uint z) = (0, 3);
