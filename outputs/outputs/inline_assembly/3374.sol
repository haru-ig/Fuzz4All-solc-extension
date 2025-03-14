pragma solidity ^0.8.0;
contract Mutability {
  bool public value;
  bool public constant NOT_ZERO = true;
  constructor (uint _newValue) public {
    value = _newValue!= 0;
  }
}


contract Main {
  function check() public {
    Mutability _mut = new Mutability(1);
    uint _oldValue = _mut.get();
    _mut.modify();
    assert(_mut.get() == _mut.get());
    uint oldValue = Mutability(get()).get();
    assert(oldValue == _oldValue);
  }
}

```
## Lecture 30 - Solidity Libraries
* https:
* https:
* https:
* https:
* https:
* https:
* https:
* https:
* https:
* https:
