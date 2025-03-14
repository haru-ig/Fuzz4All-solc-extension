pragma solidity ^0.8.0;
contract Mutators_v08_v2c {
    uint160 public immutable value_v08vb;
    modifier f(uint256 num) {
        emit myEvent(msg.sender, num);
        _;
    }
    function equivalent() public {
    }
}
contract mutators_v08_v2cM {
    function equivalent(uint256 num) public pure {
    }
}
