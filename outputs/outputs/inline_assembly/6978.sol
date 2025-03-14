pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample84 {
    int128 public Counter;
    function getCounter(int128 x) public view returns (int128) {
        return getCounter(x);
    }
    function setCounter(int128 newCounter) public view {
        uint128 temp = (uint128(newCounter + 1)) % 1126189375;
        Counter = temp;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract OptimizelyExample84 {
    uint256 public Counter;
    function getCounter(uint256 x) public view returns (uint256) {
        return getCounter(x);
    }
    function setCounter(uint256 newCounter) public view {
        Counter = newCounter + 1;
    }
}
