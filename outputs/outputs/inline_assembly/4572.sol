pragma solidity ^0.8.0;
contract emulator4 {
  struct Item {
    uint counter;
    uint price;
  }
  Item[] public items;
  function test() public returns(uint) {
    for (uint i = 0; i < 100; i ++) {
      for (uint j = 0; j < 100; j ++) {
        items[items.length] = Item(counter + 1, price);
        counter = counter + 1;
      }
      items[items.length] = Item(counter-1, price);
      counter = counter-1;
    }
    price = 1234567890;
    items[items.length] = Item(counter + 1, price);
    counter = counter + 1;
    return 100000000000000;
  }
}
