pragma solidity ^0.8.0;
contract Original;
modifier OnlyCaller {
        require(msg.sender == address(new Original()));
        _;
}

contract Modified is Original {
    modifier Mod(uint _amount) {
        (_amount);
        _;
    }

    function () external onlyCaller, Mod(100) {
    string memory _str = "this is a modifier function";

    }
}
