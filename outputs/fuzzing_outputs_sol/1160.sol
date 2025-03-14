pragma solidity ^0.8.0;
contract SimpleMutation3 {
    function simpleMutation() external {
        emit Simple2();
    }
    event Simple2();
    fallback() external {


        uint256 _temp = msg.value;
        emit Simple3();
    }
}

pragma solidity ^0.8.0;
contract SimpleMutation4 {
    function simpleMutation() internal {
        emit Simple2();
    }
    event Simple2();
    fallback() internal {
    }
}
