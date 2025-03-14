pragma solidity ^0.8.0;
contract MutatedCaller1 {
    modifiers neverFallback1 {
        require(msg.value == 0);
        require(block.timestamp > 0);
        _;
    }
    function pay_fallback1() public payable {
        uint256 my_uint = 11;
        address payable someAddress;
        uint someUint;
    }
    function mut_fallback() public {
    }
    fallback() external {
        uint256 myCaller;
        assembly {
            myCaller := caller()
        }
        emit MutCallerFallback();
    }
    event MutCallerFallback();
}
