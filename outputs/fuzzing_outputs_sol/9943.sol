pragma solidity ^0.8.0;
contract MutatedPure {
    address _caller;
    bool _failed;
    function pure_() public pure returns(uint) {
        _failed = true;
        return a * 2;
    }
    function doSomething() public {
        (bool success, ) = msg.sender.call{value: address(this).balance}("");
        require(success, "failed to transfer Ether");
    }
    receive() external payable {
        uint amount = msg.value;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    address public fallbackAddress;
    function pure_() public pure returns(uint) {
        return address(this).balance;
    }
}
