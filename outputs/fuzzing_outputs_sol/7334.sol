pragma solidity ^0.8.0;
contract R10 {
    receive() external payable pure {
    }
}
contract R5 {
    receive() public pure {
    }
}
contract R8 {
    receive() private pure {
    }
}
contract ReturnValues{
    receive() external pure {}
}
