pragma solidity ^0.8.0;
import "./CallerWithFallbackAndNonPayable";
contract Caller {
    function transfer(address payable to, uint256 amount) public {
        callFallback(to, amount);
    }
    function callFallback(address payable to, uint256 amount) internal {
        (bool success, ) = payableFallback(to, amount);
    }

    function transferWithFallback(address payable to, uint256 amount) internal {
        (bool success, ) = to.call{value: amount}(bytes(""));
    }

    function transferWithFallbackFallback(address payable, uint256 amount) public {
        (bool success, ) = (address(fallbackSenderAddress), )(targetContract.testFallback());
        (bool success, ) = to.call{value: 1}(address(fallbackTargetContract));
    }

    function fallbackSenderAddress() public view returns (address payable) {
        return msg.sender;
    }
}
