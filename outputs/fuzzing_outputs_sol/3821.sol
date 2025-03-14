pragma solidity ^0.8.0;
contract Example19Mutated {
    event SomeEvent(uint _data);
    function example19() public {
        event SomeEvent(0);
        emit SomeEvent(0);
    }
}
contract ExampleCallReturnValue {
    function example() public pure returns (bool) {
        return false;
    }
}
