pragma solidity ^0.8.0;
contract SimpleMutation2 {
    function simpleMutation2(uint value) public {
        revert(value);
    }
    fallback(uint value) external payable {}
}
