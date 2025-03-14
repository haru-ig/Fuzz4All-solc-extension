pragma solidity ^0.8.0;
interface Fallback
{
    function fallbackFunction(uint256 _g) external payable;
}
contract Caller
{
    fallback function() external payable {
        if (call.value(address(this).balance)()) {
            if (address(this).balance >= 10 ether) {
            address(0).transfer(address(this).balance);
            }
        }
    }
    function call() view public returns (bool)payable {
        uint value;
        assembly {
            function mycall() → () {
                let _value := mload(0x40)

                revert(add(add(_value, 0x20), 0x20), mload(0x40))
            }
            value := mycall()
        }
        Fallback(address(this)).fallbackFunction(value);
        return true;
    }
}
