pragma solidity ^0.8.0;
contract SimpleMutation {
    function simpleMutation() public {
        revert();
    }
    fallback() external payable {}
}

pragma solidity ^0.8.0;
contract SimpleMutation {
    function simpleMutation() public {
        revert();
    }
    fallback() public payable {}
}
