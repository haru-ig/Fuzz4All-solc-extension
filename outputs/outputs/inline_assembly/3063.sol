pragma solidity ^0.8.0;
contract A {}
contract B {
  A a;
function G() public {
  a=a();
  G();
}
function a() public pure returns(A) {
  A storage;
  storage.b=42;
  storage.c=2*storage.b+1;
  return storage;
}
}

pragma solidity ^0.8.0;
contract B {
  A a;
function G() public {
  a=a();
  a().b=100;
  a().c=100;
  G();
}
function a() public pure returns(A) {
  A storage;
  storage.b=42;
  storage.c=2*storage.b+1;
  return storage;
}
}

pragma solidity ^0.8.0;
contract B {
  A a;
function G() public {
  a=a();
  a().b=100;
  a().c=100;
  G();
}
function a() public pure returns(A) {
  A storage;
  storage.b=42;
  storage.c=2*storage.b+1;
  return storage;
}
}

`
