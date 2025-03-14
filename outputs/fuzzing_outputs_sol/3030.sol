pragma solidity ^0.8.0;
contract Caller {
    function transfer(uint256 amount) public payable {}
}

pragma solidity ^0.8.4;
contract Example {
}

pragma solidity ^0.8.4;
contract Example2 {
    address payable receiver;
    constructor(address payable _receiver) {
        receiver = _receiver;
    }
    function transfer(uint256 amount) public {
        receiver.transfer(amount);
    }
}
