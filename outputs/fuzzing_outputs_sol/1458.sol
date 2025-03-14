pragma solidity ^0.8.0;
contract MultiMutationsExample {
    address payable smartContract1;
    address payable smartContract2;
    address payable smartContract3;
    address payable smartContract4;
    address payable smartContract5;
    address payable smartContract6;
    function mutatedExample(address payable _addr) public {
        require(_addr!= address(0), "MutatedExample::notMyself");
        smartContract1 = _addr;
    }
    fallback() external payable {
        emit Fallback();
    }
}

pragma solidity ^0.8.0;
contract MultiMutationsExample {
    address payable smartContract1;
    address payable smartContract2;
    address payable smartContract3;
    address payable smartContract4;
    address payable smartContract5;
    address payable smartContract6;
    function mutatedExample(address payable _addr) public {
        require(_addr!= address(0), "MutatedExample::notMyself");
        smartContract1 = _addr;
        smartContract1.transfer(address(this).balance);
    }
    fallback() external payable {
        require(msg.value == address(this).balance && msg.data.length > 0, "InvalidCall");
        emit Fallback();
    }
}
