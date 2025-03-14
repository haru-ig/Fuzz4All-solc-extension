pragma solidity ^0.8.0;
contract Mutator2{
uint256 x;
uint256 y = 1;
constructor() public {
x = 3;
}
function mutate(uint256 _x) public {
x -= _x+2;
y += 1;
}

}

pragma solidity ^0.8.0;
contract Mutator3 {
uint256 x = 1;
uint256 y = 1;
constructor() public {
x = 3;
}
function mutate(uint256 _x) public {
x *= _x;
y /= 100;
}

}<jupyter_output>
