pragma solidity ^0.8.0;
contract SimpleMutation2 {
    function simpleMutation() public pure {
        emit Simple();
    }
    event Simple();
    fallback() external payable {}
}
