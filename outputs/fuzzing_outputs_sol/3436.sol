pragma solidity ^0.8.0;
contract MutatedCaller {
    function sendWithoutFallback() public payable {}
}

pragma solidity ^0.8.0;
interface ERC20 {
    function transfer(address from, uint256 to) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}
contract MutatedCaller {
    function sendReceive() public {
        address userBalance = address(uint160(uint128(address(this).balance)));
        address(uint160(uint128(userBalance))).transfer(userBalance);
    }
}

pragma solidity ^0.8.0;
interface IERC20 {
    function transfer(address, uint256) external returns (bool);
    function transferFrom(address, address, uint256) external returns (bool);
}
contract MutatedCaller {
    IERC20(address(0x40)).transfer(address(0x123));
}
