pragma solidity ^0.8.0;
contract CallMutability {
  uint public value1;
  uint public value2;
  uint32 [] public arr;
  address payable public _address;
  constructor() {
    _address = payable(msg.sender);
    value1 = 1;
    value2 = 2;
    arr = [10, 20, 30];
  }
}
contract Basket {
  uint public value1;
  uint public value2;
  uint32 [] public arr;

  function() external payable {
    uint value = 10;
    arr.push(value1);
  }
}
{% endhighlight %}
