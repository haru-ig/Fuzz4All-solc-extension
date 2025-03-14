pragma solidity ^0.8.0;
contract HighLevelCaller {
    uint public x;
    function highLevel() public {
        x += 2;
    }
}

pragma solidity ^0.8.0;
contract LowLevelCallerFallback {
    uint public x;
    function lowLevel(uint a) public {
        x = a;
    }
}

contract MyContract {
    uint public x;
    function getX() public view returns (uint) {
        return x;
    }
}

contract LowLevelCallerInterface {
    function doHighLevel() public payable;
    function doLowLevel(uint a) public payable;
}
