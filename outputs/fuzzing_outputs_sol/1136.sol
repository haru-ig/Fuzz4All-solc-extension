pragma solidity ^0.8.0;
contract SimpleMutation {
    function simpleMutation() public {

        emit Simple();
    }
    event Simple();
    fallback() external payable {}
}
