pragma solidity ^0.8.0;
import "./Mutator.sol";
contract Caller {
    Mutator public immutable mutator_;
    constructor() {
        mutator_ = Mutator(msg.sender);
        mutator_.mutate();
        mutator_.mutate2();
    }
    function callMutator(Mutator mutator) public {
        mutator_.mutate();
    }
    function callMutator2(Mutator mutator) external {
        mutator_.mutate();
        mutator_.mutate2();
    }
    receive() external payable {
        require(true);
    }
}
