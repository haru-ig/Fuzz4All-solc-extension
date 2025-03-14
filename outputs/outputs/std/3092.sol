pragma solidity ^0.8.0;
contract MyMutatedContract {
  MyAddressableContract addr;
  constructor() {
    addr = new MyAddressableContract();
    addr.changeAddress();
  }
}

}
