pragma solidity ^0.8.0;
import "new.sol";
contract Mutated {
    New public newC = new New();
    mapping (address => uint256) public addresses;
    modifier before(address adr) {
        addresses[adr] += 1;
        revert("hello");
    }
    function doA() {
        before(msg.sender);
    }
}
