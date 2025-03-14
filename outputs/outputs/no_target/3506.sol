pragma solidity ^0.8.0;
contract m105 {
	event M102();
	uint public a;
	mapping(bytes32 => uint) public m;
	constructor(uint _a) { m["0"] = 1; m["1"] = 1; m["2"] = 1; m["3"] = 1; m["4"] = 1;	m["5"] = 1;	m["6"] = 1; m["7"] = 1;	m["8"] = 2;		m["9"] = 3;		m["a"] = 1;		m["b"] = 4;		m["c"] = 9;		m["d"] = 4; m["e"] = 3;		m["f"] = 2;		m["1b"] = 6;	m["1c"] = 3;	m["1d"] = 7;	m["1e"] = 5;	m["1f"] = 9;		m["20"] = 7;	m["21"] = 7;	m["22"] = 3;	m["23"] = 4;	m["24"] = 7;	m["25"] = 9;	m["26"] = 6;	m["27"] = 3;	m["28"] = 4;	m["29"] = 8;
	}
}

pragma solidity ^0.8.0 checked;
contract m106 {
	event M102();
	uint public a;
	mapping(bytes32 => uint) public m;
	constructor(uint _a) { a = _a; m["-35"] = 1;  m["9e00"] = 34;  m["35"] = 2;   m["234"] = 3; }
}
