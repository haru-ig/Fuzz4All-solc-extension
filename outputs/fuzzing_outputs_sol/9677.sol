pragma solidity ^0.8.0;
contract CallReceiver2 {
    receive() external payable {
        memory x = 0;
    }
}


pragma solidity ^0.8.0;
contract CallReceiver3 {
    receive() external payable {
        require(0 < 1);
    }
}
