pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated_sn7000 {
    event Log(address sender, uint value); uint public x; mapping (uint => address) public y;
    function  mutate(uint) public {
        x = uint256(30000000000000000000000);
        require(x > 100);
        emit Log(msg.sender, x);
    }
}

pragma solidity >=0.8.0;
pragma experimental ABIEncoderV2;
contract mutated_sn7100 { uint public x; function  mutate(uint) public { x = uint256(10000000000000000000000); } }
pragma solidity >=0.8.0;
