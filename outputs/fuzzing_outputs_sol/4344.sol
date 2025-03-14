pragma solidity ^0.8.0;
contract CallerNoModifier {
    function callToCaller() public {
        (bool success, ) = address(this).call{value: 12}("");
        require(success);
    }
}
