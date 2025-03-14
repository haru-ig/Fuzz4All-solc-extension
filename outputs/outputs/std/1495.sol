pragma solidity ^0.8.0;
contract Mutated {
function mutate() public {
if (a!= 1){
a = 123;
} else if (c!= 1){
b = 456;
} else if (1 > 1){
a = 888;
b = 999;
} else {
a = 333;
c = 444;
}
}
}
