pragma solidity ^0.8.0;
contract m10 {
	event M10();
	uint public d;
	mapping (uint => uint) public m;
	mapping (uint => uint) public m1;
	mapping (uint => uint) public m2 ;
	constructor(uint _c, uint _d) { d = _d; m2[_d] = d; d = 11; m1[(_d)] = d; d = 3 * _c; m1[(_c)] = d; m[0x00] = _c; d = (_c > (_c * _c))? _c : _c * _c; m2[d] = d; m[(_d <= d)? (_d > 0? _d : 0) : d] = _d; m[0xfffffffffff] = _d; m1[0xfffffffffff] = d; m2[d] = (_d >= d + _d)? (_d - _d * (_d / d)) : -(_d * _d - _d * _d / d - 1)) }
}
