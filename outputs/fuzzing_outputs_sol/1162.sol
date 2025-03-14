pragma solidity ^0.8.0;
contract SimpleMutation {
    function simpleMutation(address  , address  ) public {
        emit Simple2();
    }
    event Simple2();
    fallback() external payable {
    }
}

contract Caller {
    constructor() {}
    function callFromCallerPayable(address new_address) public {
        require(new_address!= address(0));
        address(new_address).call{value : msg.value}("");
    }
}
