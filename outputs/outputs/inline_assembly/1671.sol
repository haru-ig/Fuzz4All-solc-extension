pragma solidity ^0.8.0;
contract MutatorS4 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 1;
struct Address {
    uint16 s1;
    uint16 s2;
        bytes32 s3;
}
Address storage a;
Address storage b;
Address s;
function set() public {
s = Address(1);
s1 := 0;
s2 := 0;
s3 :=keccak256("");
a = s;
b = s;
set(0);
}
function set(uint256 x) public {
s1 := ONE;
s2 := TWO;
s3 := "hi";
a.s1 = x;
a.s2 = x;
a.s3 = keccak256("hi");
b.s3 = "hi";
}
}
pragma solidity ^0.8.0;
contract MutatorS5 {
uint256 constant ONE = 1;
uint256 constant TWO = 1;
uint256 constant THREE = 1;
struct Address {
    uint16 s1;
    uint16 s2;
        bytes32 s3;
}
Address storage a;
Address storage b;
Address s;
constructor() internal {
s = Address(s,1,"".decodeAs(0, 0));
a = s;
}
function set() public {
a.s3 = "hi";
a.s3 = keccak256("hi");
set(0);
}
function set(uint256 x) public {
if (true) {
a.s3 = keccak256("hi");
} else {
a.s1 = x;
a.s2 = x;
a.s3 = "hi";
}
}
function set(address x) public {
set(x.decodeAs(0, 0));
}
}


pragma solidity ^0.8.0;
contract MutatorS6 {
uint256 constant ONE = 1;
