pragma solidity ^0.8.0;
contract CallerModifier {
    modifier modifier01() {
        Ether.transfer(12);
        _;
    }
    function callToCaller() public {
        (bool success, ) = address(this).call{value: 12}("");
        require(success);
    }
}
