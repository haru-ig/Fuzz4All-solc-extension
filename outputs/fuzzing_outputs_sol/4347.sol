pragma solidity ^0.8.0;
contract CallerModifier {
    function modified() public {
        (bool success, ) = address(this).call{value: 12}("");
        require(success);
        address.sendValue(12);
    }
}
