pragma solidity ^0.8.0;
contract IncompatibleWithMutatedFallbackExample{
    function () external {
    }
}

pragma solidity ^0.8.0;
import "./IncompatibleWithMutatedFallbackExample.sol";
contract Caller{
    address public target;
    constructor(address deployedTarget) public {
        target = deployedTarget;
    }
    function callTarget() public {
        target.call{value : 10 ether}(keccak256(abi.encodePacked(address(this), "dummy"))));
    }
}
