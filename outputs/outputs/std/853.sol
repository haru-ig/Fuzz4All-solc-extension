pragma solidity ^0.8.0;
contract MyMutation
{
address public a;
mapping(address=>bool) public mutated;
constructor(address _a) {
a = _a;
}
function testMutated() public pure {
mutated[a] = true;
}
}
contract Same6
{
address public a;
mapping(address=>bool) public mutated;
constructor(address _a) {
a = _a;
}
function mutationTest() public pure {
mutated[a] = true;
}
}
