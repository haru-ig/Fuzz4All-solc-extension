pragma solidity ^0.8.0;
contract MutatorS29 {
uint256 constant ONE     = 1;
uint256 constant SIX      = 6;
uint256 constant ONE_PLUS = ONE + 1;
uint256 constant ONE_PLUS_SIX = ONE_PLUS_SIX*SIX;
uint256 constant SIZE               = ONE_PLUS_SIX/ONE_PLUS_SIX;
uint256 c = ONE;
function mutate() public {
    c = ONE_PLUS_SIX + ONE_PLUS_SIX + ONE_PLUS_SIX;
    c = ONE + ONE_PLUS_SIX;
    c = ONE/ONE_PLUS_SIX;
    c = ONE/ONE + ONE_PLUS_SIX;
    c = ONE/ONE;
    c = ONE-ONE;
    c = ONE*ONE;
    c = ONE_PLUS_SIX/ONE;
}
}
struct Node {
uint key;
uint256 value;
address owner;
mapping (address => Node) children;
}

pragma solidity ^0.8.0;
contract MutatorS30 {
address public owner = msg.sender;
mapping (address => Node) public nodes;
/* Please create a short program which adds a simple blockchain data structure with mutators to exercise the following functionality:
- Mutate a Node in a Node’s Child mapping
- Test mutated Node in Child mapping via lookup
- Mutate a Node in a Node’s Children, via lookup
- Mutate
