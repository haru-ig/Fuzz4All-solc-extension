pragma solidity ^0.8.0;
contract SimpleFallbackCallerV1 {
    function Mutator() public payable {}
}

pragma solidity ^0.8.0;
contract SimpleFallbackCallerV3 {
    struct Caller {

    }
    event Received(string message);
    function Mutator(Caller caller) public payable {
        emit Received("SimpleFallbackCallerv3");
    }
}
