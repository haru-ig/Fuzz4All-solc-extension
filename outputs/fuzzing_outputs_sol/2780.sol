pragma solidity ^0.8.0;
contract Mutator {


}
contract Mutator2 {
    address payable _addr;
    uint256 _amount;
    constructor(uint256 _amount) {
        _addr = payable(msg.sender);
        _amount = _amount;
    }
}
contract Mutator3 {
    address payable _addr;
     uint256 _amount;
    constructor(_amount) { _addr = payable(msg.sender); _amount = _amount; }



}<fim_middle>}

pragma solidity ^0.8.0;
contract FallbackFunc {
    uint256 _amount;


    receive() external payable {
        _amount += uint256(msg.value);
    }


    fallback() external payable {
        _amount -= uint256(msg.value);
    }
}
