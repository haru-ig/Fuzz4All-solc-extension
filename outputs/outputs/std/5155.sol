pragma solidity ^0.8.0;
contract Mutated2 {
    function f(uint a) public {
        emit NewUint(a);
    }
}

pragma solidity ^0.8.0;
import "Address.sol";
contract Mutated {
    fallback() external payable {
    }
}
