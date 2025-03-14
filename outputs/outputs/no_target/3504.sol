pragma solidity ^0.8.0;
contract m103 {
	event M103();
	uint public a;
	mapping(bytes32 => uint) public m;
	constructor(uint _a) { a = _a; m["00"] = a; m["ab"] = a;  m["a"] = a;   m["-35"] = a;   m["9e00"] = a;   m["35"] = a;   m["234"] = a;}
}

pragma solidity ^0.8.0;
contract m104 {
	event M104();
	uint public a;
	mapping(bytes32 => uint) public m;
	constructor(uint _a) public { a = _a; m["a"] = a*m["00"]; m["ab"] = a;  m["00"] = a*a;  m["-35"] = a*a;  m["9e00"] = 10**100; m["35"] = a; m["234"] = a;}
}

pragma solidity ^0.8.0;
contract m105 {
	event M105();
	uint public a;
	mapping(bytes32 => uint) public m;
	constructor(uint _a) public { a = _a; m["a"] = a*m["00"]; m["ab"] = a;  m["00"] = a*m["a"];  m["-35"] = a*m["ab"];  m["9e00"] = 10**100; m["35"] = a; m["234"] = a;}
}
