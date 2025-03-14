pragma solidity ^0.8.0;
contract mutator268{
	struct myData {
		uint b;
		uint c;
	}
	struct mem{



	}
	function myfunction() public{
		mem storage m = mem(0xF55DBE0);
		m.a = 0x74657374;
		m.b = 0xC96FB8D6B8677B963098A72A954CEF6AD92522D72433509549D87B47F07772DF;
		m.c = 0x70F13E17F665FAA1182DD56628DE5E1C2A38649CCFF396A1E25F9555CDD17DC1;
	}
	function myfunction2() public{
		h = 1;
		uint x = 0x60B890110DA85088EBF65BAA5D1BE6FE42A0282B7E128D77AF18E14D415D02B;
		bytes memory y = bytes(x);

		h = 3;
		y[3] = 0x4D;

		uint a;

		h = 4;
		a = address(m);
		a.balance();


		h = 4;
		m.a = 0xAF;
		assert (m.a == 0xAF);
		m.a = 0x56;
		assert (m.a == 0x56);
		m.b = 0x1C;
		assert(m.b == 0x1C);
		m.b = 0x7E;
		assert(m.a == 0x56);
	}
	address private _owner;
	address private _admin;
	modifier onlyOwner { if(_msgSender() == _owner) _; }
	modifier onlyAdmin { if(_msgSender() == _admin) _; }

	constructor() public {
		_owner = _msgSender();
		_admin = msg.sender;
	}
}
