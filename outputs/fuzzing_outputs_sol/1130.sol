pragma solidity ^0.8.0;
contract SimpleMutationSemantics {
    function simpleMutation() public {
        revert();
    }
    function simpleMutation2() public {
        transfer(address(this));
    }
    fallback() external payable {
        revert();
    }
    receive() external {


    }
    receive() external payable {
        if (msg.data.length > 0) {
            revert();
        }
    }
}
