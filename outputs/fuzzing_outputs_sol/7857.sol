pragma solidity ^0.8.0;
contract EquivalentFallbackExample2 {
    function fallback() external payable {
        (bool sent, ) = msg.value.call{value: msg.value}(new address(1));
        require( sent, "fallback function did not send Ether");
    }
}
