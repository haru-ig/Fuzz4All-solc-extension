pragma solidity ^0.8.0;
contract m104 {
	event M102();
	uint public a;
	mapping(bytes32 => uint) public m;
	constructor(uint _a) { a = _a; m[uint(-500)] = 1;  m[uint(3555)] = 1;  m[uint(-35)] = 1;  m[uint(9e14)] = 34;  m[uint(-35)] = 2; }
}
contract m105 {
pragma solidity ^0.8.0;
uint x = 1234560;
uint y = 35;
uint _x = 100;
uint _y = 35;
function() public payable {x = safeCast(uint8(uint(x))%y);}
function(uint) public pure {x = safeCast(uint8(uint(_x))%_y);}
function(uint, uint) public pure {x = safeCast(uint8(uint(_x))%_y);}
function(uint, uint, uint) public pure {x = safeCast(uint8(uint(_x))%_y);}
function(uint, uint, uint, uint) public pure {x = safeCast(uint8(uint(_x))%_y);}
function(uint) public pure {y = safeCast(uint8(uint(_y))%uint(y))}
function (uint) public pure {y = safeCast(uint8(uint(_y))%uint(y))}
function() public pure {x = safeCast(uint8(uint(_x))%byte(y))}
function(uint) public pure {y = safeCast(uint8(uint(_y))%byte(y))}
function(uint, uint) public pure {x = safeCast(uint8(uint(_x))%byte(y))}
function(uint, uint, uint) public pure {x = safeCast(uint8(uint(_x))%byte(y))}
function(uint, uint, uint, uint) public pure {x = safeCast(uint8(uint(_x))%byte(y))}
function(uint, uint, uint, uint, uint) public pure {x = safeCast(uint8(uint(_x))%byte(y))}
function(uint[]) public pure {x = safe
