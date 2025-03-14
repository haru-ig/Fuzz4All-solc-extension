pragma solidity ^0.8.0;
contract Debris{


    fallback() external payable {}
}

contract Fallback1{
    receive() external {
        throw new Error("Something went wrong.");
    }
    receive() external payable {}
}
contract Fallback2{
    receive() external {
        throw new Error("Something went wrong.");
    }
    receive() external payable {}
}
