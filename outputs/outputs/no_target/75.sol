pragma solidity ^0.8.0;
contract BaseToken {

    event Transfer(address indexed from, address indexed to, uint256 value);

    function transfer(address _to, uint256 _value) public returns(bool);
}
