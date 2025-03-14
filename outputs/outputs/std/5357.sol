pragma solidity ^0.8.0;
import "./Mutate.sol";
contract Mutator {
    function main() public {
        Mutate mutatorInstance = Mutate(0x0);
        mutatorInstance.mutator();
    }
}
