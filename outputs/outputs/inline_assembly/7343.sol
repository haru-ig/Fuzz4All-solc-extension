pragma solidity ^0.8.0;
contract Mutations_sem1 {
  struct storage1 {
    uint constant a = 1234;
  }
  using Mutations_inline1 for storage1;

  storage1 storage1 = storage1(
  123456
  );
}
contract Mutations_sem2 {
  struct storage2 {
    uint constant a = 1230;
  }
  using Mutations_inline2 for storage2;

  storage2 storage2 = storage2(
  987654
  );
}
contract Mutations_sem3 {
  struct storage3 {
    uint constant a = 108765;
  }
  using Mutations_inline3 for storage3;

  storage3 storage3 = storage3(
  767654
  );
}
contract Mutations_sem4 {
  struct storage4 {
    uint constant a = 123456780993798765678;
  }
  using Mutations_inline4 for storage4;

  storage4 storage4 = storage4(
  12345678
  );
}
