pragma solidity ^0.8.0;
contract Test37 {
    event logEvent(uint foo);
    function mutated7() public {
    uint x = 1;
    uint y = 2;
    y = 4;
    emit logEvent(x);
    }
}

pragma solidity ^0.8.0;
contract Test38 {
  event logEvent(uint foo);
  struct Data {
    mapping(uint => uint) data;
    uint next;
  }
  Data d;
  mapping (uint => uint) _count;
  function mutated8() public {
    d.data[1] = 5;
    for (uint i = 1; i <= 2; i++) {
      d.data[i] = i;
      _count[i]++;
    }
    d.data[5] = 3;
    d.data[d.next] = 2;
    d.data[d.data[d.next]] = 7;
    d.data[d.data[d.next]] = 2;
    emit logEvent(_count[7]);
  }
}

pragma solidity ^0.8.0;
contract Test39 {
  event logEvent(uint foo);
  struct Data {
    uint val;
    uint next;
  }
  Data[10] ds;
  uint _max;
  bool _hasData;
  function mutated9() public {
    for (uint i = 0; i < 3; i++) {
      ds[i].next = i + 1;
    }

    ds[4].next = ds[5].next;
    ds[5].next = ds[2].next;
    ds[7].next = ds[5].next;
    ds[9].next = ds[1].next;
    ds[11].next = ds[0].next;
    ds[14].next = ds[7].next;
    uint x = ds[ds.length - 1].val;
    uint y = ds[ds.length -2].val;
    _hasData = (x <= y);
    ds[0].next = ds[ds.length -   ].next;
    for (uint i = 0; i < 3; i++) {
      ds[ds.length - i - 1].next = ds[ds.length -1].next;
    }
    emit logEvent(_hasData);
    for (uint i = 0; i < 10; i
