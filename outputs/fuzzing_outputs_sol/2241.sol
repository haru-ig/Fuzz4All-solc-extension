pragma solidity ^0.8.0;
contract FallbackMutater is Mutater{

    function fallback(uint256 _) public{
        require(false, "Fubad");
    }
}
contract FallbackCallMutater is Mutater{

    using SafeMath for uint256;
    function fallback(uint256 _y) external onlyIfValid(msg.data) returns(uint256){
        uint256 x = _x + _y / 2;
        bool t = _x == x;
        require(t, "Not enough gas");
        require(t, "Invalid");
    }
    function onlyIfValid(bytes memory) internal pure returns (address) {
        return tx.origin;
    }
}
