pragma solidity ^0.8.0;
import "./Mutated.sol";
contract Caller {
    function callMe() public {
        Mutated fallback = Mutated(_myStorage);
        fallback.mutated();
    }
}
