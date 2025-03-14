pragma solidity ^0.8.0;
contract MutateCaller {
    function highLevel() public payable returns (uint) {
        require(callTest(0), "failed");
        this.highLevel();
        return 0;
    }
    function callTest(uint counter) internal pure returns (bool) {
        counter = 0;
        bool result = true;
        require(result == true, "failed");
        counter += 1;
        return counter % 2 == 0;
    }
}

pragma solidity ^0.8.0;
contract FallbackCaller {
    fallback() public {}
}
