pragma solidity ^0.8.0;
interface MixedContactsExample507Interface1 {
    function anotherOperation3() public view returns(address);
}
contract MixedContactsExample507 is MixedContactsExample507Interface1 {
    mapping(address => uint256) public values;
address public a;
}
