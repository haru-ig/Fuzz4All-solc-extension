pragma solidity ^0.8.0;
contract SimpleMutation2 {
    function simpleMutation() public {
        emit Simple2();
    }
    event Simple2();
    fallback() external {
    }
}
