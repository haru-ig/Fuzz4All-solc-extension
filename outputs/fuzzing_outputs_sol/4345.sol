pragma solidity ^0.8.0;
contract Caller {
    function callToCaller() public {
        (bool success, ) = address(this).call{value: 12}("");
        require(success);
    }
}

pragma solidity ^0.8.0;
contract CallerWithModifier {
    function callToCaller() public payable {
        (bool success, ) = address(this).call{value: 8}("");
        require(success);
    }
}
