pragma solidity ^0.8.0;
contract Mutability {
  uint public constant ZERO = 0;
  uint public constant ONE = 1;
  uint public value;
  constructor () {
    value = ZERO;
  }
  function setValue (uint _value) public {
    value = _value + ONE;
  }
}
{% endhighlight %}

</div>

This tutorial is finished. You've reached the end of the tutorial and the next step is to start working with [Solidity contracts](https:

## Next Lesson

[Advanced Solidity Concepts](https:
