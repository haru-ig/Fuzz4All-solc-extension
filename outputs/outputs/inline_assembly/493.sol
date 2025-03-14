pragma solidity ^0.8.0;
contract SemanticallyEquivalenty1 {
    uint _x;

    function SemanticallyEquivalenty1() public {
      _x;
      emit Log(msg.sender, "", "");
    }
    event Log(address value1, string value2, string value3);
}
