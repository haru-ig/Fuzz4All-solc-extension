pragma solidity ^0.8.0;
contract Caller {
    User public user;
    constructor () public {
        user = new User();
    }
    function fallback() public {
        require(msg.data.length > 0, "Fallback called without data");
        user.changeFallbackContractAddress(address(fallbackContract), address(user));
        user;
        fallbackContract.fallback();
    }
}
