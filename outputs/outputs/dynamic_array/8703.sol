pragma solidity ^0.8.0;
contract MyContractSimpleExample26 {
	struct MyStruct {
		uint a;
		uint b;
		uint c;
	}

	constructor(uint a, uint b, uint c) {
		m_data = new MyStruct(a, b, c);
	}

	mapping(address => uint) public m_data;
	address m_address;
	address m_address2;

	struct MyStruct2 {
		address a;
		address b;
		address c;
	}

	constructor(address a, address b, address c) {
		m_address = a;
		m_address2 = b;
	}

	mapping(address => MyStruct2) public m_data2;

	constructor() {
		m_data2[m_address2] = new MyStruct2(m_address, m_address2, m_address);
	}
}
