pragma solidity ^0.8.0;
contract Modifiers {
    uint256 private result;

    modifier sum(uint sum){
        require(result + sum == msg.value,'sum not implemented');
        _;
    }

    function mod() external sum(uint(1)) returns(uint256) {
        result += uint256(msg.value);
        return result;
    }
}
