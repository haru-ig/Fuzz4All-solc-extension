pragma solidity ^0.8.0;

contract Fallback {
    fallback () external payable {}
    fallback () external {}
    fallback () external {   }
}

contract TryPayableFallback {

    function testTransferFromERC20() public {
        IBurnableToken(_token).burn(msg.sender, 10000000000000000000000000000);
    }

    function exampleWithFallbackContract() public {
        B(_token);
        IERC20(_token).mint(msg.sender, 1 ether);
    }

    function testReceiveEther() public {
        uint256 value = 8;

        require(value == 8, "value mismatch");
        tryTransferToEther(_token);
    }
}
