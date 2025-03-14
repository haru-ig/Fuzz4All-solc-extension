pragma solidity ^0.8.0;
contract Ether {
    address public nonFallbackAddress;
    constructor() {
        address(nonFallbackAddress).transfer(msg.value);
        require(nonFallbackAddress == address(nonFallbackAddress));
    }
}

pragma solidity ^0.8.0;
contract Caller {
    constructor(address _nonFallbackAddress) {
       nonFallbackAddress = _nonFallbackAddress;
    }
    function test() external payable {
        address(nonFallbackAddress).transfer(msg.value);
    }
}
