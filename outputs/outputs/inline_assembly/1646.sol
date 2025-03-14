pragma solidity ^0.8.0;
contract Mutator {
uint256 constant one = 1;
uint128 constant two = 1;
uint256 constant three = 2;
uint256 constant four = 2;
uint256 x = 1;
uint256 y = 1;
for(uint256 i = 0; i < one; i += two) {
x++;
y++;
}
}
pragma solidity ^0.8.0;
contract Mutator {
uint8 x = 1;
uint8 y = 1;
for(uint8 i = 0; i < two; i += three) {
x++;
y++;
}
}
pragma solidity ^0.8.0;
contract Mutator {
uint256 a = 1;
uint256 b = a;
uint256 c;
function calculate() public {
b += 1;
	a *= 2;
	c = 2*(a + ONE);
}
}
