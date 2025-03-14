pragma solidity ^0.8.0;
contract SimpleMutation1 {
    function simpleMutation() public {
        emit Simple1();
    }
    event Simple1();
    fallback() external {


    }
}
