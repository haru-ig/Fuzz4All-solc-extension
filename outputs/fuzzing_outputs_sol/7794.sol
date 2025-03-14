pragma solidity ^0.8.0;
contract UnusedContract {

    struct FallbackData {
        bool isFallbackUsed;
        string data;
    }

    function fallback(string memory data, uint index) public {
        FallbackData memory dataStore;
        dataStore.isFallbackUsed = true;
        dataStore.data = data;
        message(256, 0);
    }

    function message(uint amount, uint value) internal {
        payable(msg.sender).transfer(amount);
        emit Log(msg.sender, amount, value);
    }

    event Log(address sender, uint amount, uint value);
}

contract Caller {

    function call() public pure returns(uint) {
       return address(UsedContract{}).functionCalled();
    }
    function functionCalled() public pure returns(uint) {
        return address(NewSemanticsCaller{}).functionCalled();
    }
    function newFunctionCalled() public pure returns(uint) {
        return address(OldSemanticsCaller{}).newFunctionCalled();
    }
}

contract UsedContract {

    fallback();

    function functionCalled() public pure returns(uint) {
       return address(Caller{}).functionCalled();
    }
}
