pragma solidity ^0.8.0;
contract Mutator {

uint256 constant ONE = 1;

	uint256 constant ADDITION = 1;
uint256 constant ADDITION_ONE = 1;
uint256 constant AMOUNT = 25;

	uint256 constant DIVIDE_TWO = 1;
uint256 constant DIVIDE_TWO_TWO = 2;

uint256 a = 1;
uint256 b = "42";
uint256 c;
   uint256 x;
   uint256 y;


function mutate(uint256 _amount, uint256 _x, uint256 _y) public {

if (_x == 3) {
x = _x + ADDITION;
y = _y + DIVIDE_TWO;
}
else {
x = _x;
y = _y;
}
x = TWO * DIVIDE_TWO_TWO * div(a,_amount) + ONE;
y = TWO * DIVIDE_TWO_TWO * div(_y,TWO) + ONE;
y = TWO * x + TWO*div(y,TWO);
y = div(y);
a = TWO * TWO - x - y;
b = TWO*TWO + y - ONE;
}

}
    function div(uint256 _x) private pure returns (uint256) {
        return _x / ONE;
    }
    function mul(uint256 _a, uint256 _b) private pure returns (uint256) {

        return _a * _b;
    }
	function div(uint256 _a, uint256 _b) private pure returns (uint256) {
        if (_b == 0) {
            return 0;
        }
        return _a / _b ;
    }
}

pragma solidity ^0.8.0;
contract Mutator {

uint256 constant ZERO = 0;
uint256 constant ADDITION = 1;
uint2
