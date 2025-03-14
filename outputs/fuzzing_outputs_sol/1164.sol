pragma solidity ^0.8.0;
contract SimpleMutation {
    function simpleMutation() public {
        emit Simple();
    }
    event Simple();
}

pragma solidity ^0.8.0;
contract SimpleMutation3 {
    function simpleMutation() public {
        emit Simple3();
    }
    event Simple3();
    fallback() external {
    }
}
