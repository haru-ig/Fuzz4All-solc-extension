pragma solidity ^0.8.0;
contract FallbackMod is Example3 {


    modifier onlyCaller() {
        require(msg.sender == address(this), "caller");
        _;
    }
    function __fallback(address _unused) public onlyCaller() pure returns (bytes memory) {
        return new bytes(0);
    }
}
}
