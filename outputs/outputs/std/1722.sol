pragma solidity ^0.8.0;
contract Duplicated {
    address public owner;
    mapping(address => mapping(address => uint256)) public map;
    uint256 public i;
    function setValue(address addr) public {
        if (map[addr][msg.sender] == 0) {
            map[addr][msg.sender] = i;
            emit Log("Address" + addres[i] + " => value" + uint256[i] + " stored");
            i++;
        }
    }
}
