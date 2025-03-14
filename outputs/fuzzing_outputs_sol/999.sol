pragma solidity ^0.8.0;
contract FallbackMod {
    function f(uint256) public pure {}
    receive() public pure {}
 }


pragma solidity ^0.8.0;
receive() external payable {}


pragma solidity ^0.8.0;
contract FallbackReceive {
    function f(uint256) public pure {}
    receive() public pure {}
 }


pragma solidity ^0.8.0;
receive() external pure {revert("foo");}
contract FallbackReceiverWithReverted {
    receive() public pure {revert("foo");}
}
