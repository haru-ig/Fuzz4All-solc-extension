pragma solidity ^0.8.0;
contract Contract12Mut5 {
    event Fulfilled(address to, uint256 indexed value);
    uint256 private value;
    constructor(uint256 value_) {
        value = value_;
    }

    receive() external payable {
        value = 1;
        value++;
        value = 2;
        value++;
    }
}





pragma solidity ^0.8.0;
contract CallerMut5 {
    event Fulfilled(address to, uint256 value);

    receive() external payable {
        Fulfilled(msg.sender, msg.value);
    }
}




pragma solidity ^0.8.0;
contract Contract12Mut5Mut5 {
    receive() external payable {
        num = msg.value;
        num = msg.value;
        num++;
        num = msg.value;
    }
}
