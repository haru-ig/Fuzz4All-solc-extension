pragma solidity ^0.8.0;
contract Modifiers {
    function foo(uint _n) pure public {
        require(_n == 5);
        require(_n < 10);
    }
}
contract Caller {


    function fallback(uint x, uint y) public {
        Modifiers.foo(x);
    }
}

pragma solidity ^0.8.0;
contract SmallContract {
    function foo() public view payable {
        if(msg.value < 1 ether) revert();
    }
}
contract FallbackReceiver {
    address payable dummy;

    function() external payable {
        dummy.call{value: msg.value}("");
    }

    function setDummy(address _dummy) public {
        dummy = _dummy;
    }
}
contract FallbackReceiverContract {
    uint public constant SIZE = 42;
    address payable private __dummy__;

    constructor(address _dummy) {
        __dummy__ = _dummy;
    }

    receive() external override {

        revert();
    }

    function() external payable override {
        uint256 ethBalanceValue = address(this).balance;
        uint256 bytesBalanceValue = uint256(keccak256(abi.encode(address(this), ""));
        require(ethBalanceValue > SIZE);
        require(bytesBalanceValue > SIZE);
    }

    function setDummy(address _dummy) public {
        __dummy__.transfer(address(this).balance);
        __dummy__ = _dummy;
    }
}
