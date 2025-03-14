pragma solidity ^0.8.0;
contract Example {
    function transfer(uint256 amount) public payable {
    }
}
pragma solidity ^0.8.4;
contract Example {
    address payable receiver;
    constructor(address payable _receiver) {
        receiver = _receiver;
    }
    function transfer(uint256 amount) public {
        receiver.transfer{value: amount}('');
    }
}

pragma solidity ^0.8.9;
contract Example {
}
pragma solidity ^0.8.0;
contract Example {
    constructor() {}
}
