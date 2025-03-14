pragma solidity ^0.8.0;
contract CallerModifier {
    modifier modifier00() {
        callToCaller;
        _;
    }

    function callToCaller() public {
        (bool success, ) = address(this).call{value: 12}("");
        require(success);
    }
}
