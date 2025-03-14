pragma solidity ^0.8.0;
interface MinterInterface {}
contract SimpleMinter {
  SimpleMinter immutable public minter;
}
contract MutateMinter is SimpleMinter {
  function mutate() public {
    minter_ = address(new SimpleMinter());
  }
}
contract SimpleMinterMutating is MutateMinter {
    SimpleMinter immutable public minter_;
}
