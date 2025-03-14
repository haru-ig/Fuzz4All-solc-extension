pragma solidity ^0.8.0;


contract Fallback {
    string public str = "Hello World!";









    fallback() external {





        str = _my_custom_method();
    }

    function _my_custom_method() public {
        emit MyCustomEvent(msg.sender, block.timestamp);
    }





    function getAddress() public pure returns (address) {
        return address(this);
    }
}
