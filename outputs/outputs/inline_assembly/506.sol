pragma solidity ^0.8.0;
contract SemanticallyEquivalenty5 {
    fallback() external payable {
        emit Log((msg.sender), "", "");
    }
    event Log(address value8, string value9, string value10);
}
function Test(SemanticallyEquivalenty4 e) {
  e.Log(257, "someString", "someOtherString");
}
function Test(SemanticallyEquivalenty5 e) {

  e.Log(257, "someString", "someOtherString", "someMoreString");
}
contract SemanticallyEquivalenty6x {
    fallback() external payable {
        emit Log((msg.sender), "", "");
    }
    event Log(address value11, string value12, string value13);
}
contract SemanticallyEquivalenty6y {
    fallback() external payable {
        emit Log((msg.sender), "", "");
    }
    event Log(address value14, string value15, string value16);
}
function Test(SemanticallyEquivalenty6x e) {
  e.Log(257, "someString", "someOtherString");
  e.Log(20000, "moreString", "someMoreString");
  e.Log(112, "evenMoreString", "evenMoreString");
}
function Test(SemanticallyEquivalenty6y e) {

  e.Log(257, "someString", "someOtherString", "someMoreString");
  e.Log(20000, "moreString", "someMoreString");
  e.Log(112, "evenMoreString", "evenMoreString");
}
