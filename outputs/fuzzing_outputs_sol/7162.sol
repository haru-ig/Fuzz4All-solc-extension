pragma solidity ^0.8.0;

address payable addr;
address example = 0x8C58BFF7d337765F75Bcb35582cC88B6094368450;

fallback function() external {
    addr.transferFrom(msg.sender, 0x0, 2 ** 256);
}

contract Example is Example2{
    fallback function() external {
        require(hasPassed());
    }

    modifier onlyMe() {
        require(msg.sender == addr, "Not your address");
        _;
    }

    function hasPassed() public view returns (bool) {
        return true;
    }
}
