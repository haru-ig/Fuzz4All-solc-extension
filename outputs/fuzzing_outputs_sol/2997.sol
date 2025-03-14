pragma solidity ^0.8.0;
contract MimicsCaller {
    function transfer(address payable to, uint256 amount) public {
        require(msg.value <= amount && to!= address(0));
        (bool success, ) = payable(to).call{value: amount}("");
        require(success, "Failed to send Ether");
    }
}

pragma solidity ^0.8.0;
contract Interface {
    function fallback(uint256) public pure returns (uint256);
}
