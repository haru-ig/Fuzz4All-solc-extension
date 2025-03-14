pragma solidity ^0.8.0;
contract SemanticallyEquivalent7 {
address owner;
constructor() {
    owner = msg.sender;
}
function pureFunction() public returns (uint) {
    return owner;
}
}
address x;
assembly {
    x := pureFunction()
}
