pragma solidity ^0.8.0;
contract SimpleMutation3 {
    function simpleMutation() public {
        emit Simple2();
    }
    event Simple2();
    function() external payable {
    }
}
