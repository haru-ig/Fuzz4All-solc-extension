pragma solidity ^0.8.0;
contract AddressChangedMutating {
    address payable valueFromCaller;
    function example1() public payable returns(uint256 result) {
        valueFromCaller = msg.sender;
        result = 1;
    }
    receive {}
}

pragma solidity ^0.8.0;
contract ValueMutate {
    address valueFromCaller;
    receive () external payable returns(uint256) {
        valueFromCaller = msg.sender;
        return 1;
    }
}
pragma solidity ^0.8.0;
