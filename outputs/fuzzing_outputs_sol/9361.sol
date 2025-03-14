pragma solidity ^0.8.0;
contract MutatingFallback5 {
  function modify(uint num1, uint num2) public virtual {
    require(num1 == 123, "modify() called");
  }
}
contract CreateAddress5 {
  function createAddress() public pure virtual { }
}

pragma solidity ^0.8.0;
contract MutatingFallback6 {
  function modify(uint num1, uint num2) virtual public {
    require(num1 == 123, "modify() called");
  }
}
contract CreateAddress6 {
  function createAddress() public pure virtual { }
}

pragma solidity ^0.8.0;
contract MutatingFallback7 {
  function modify(uint num1, uint num2) public virtual override {
    require(num1 == 123, "modify() called");
  }
}
contract CreateAddress7 {
  function createAddress() public pure virtual override { }
}

pragma solidity ^0.8.0;
contract MutatingFallback8 {
  function modify(uint num1, uint num2) public virtual override payable {
    require(num1 == 123, "modify() called");
  }
}
contract CreateAddress8 {
  function createAddress() public pure virtual override payable { }
}

pragma solidity ^0.8.0;
contract MutatingFallback9 {
  function modify(uint num1, uint num2) public virtual override virtual {
    require(num1 == 123, "modify() called");
  }
}
contract CreateAddress9 {
  function createAddress() public pure virtual override virtual { }
}

pragma solidity ^0.8.0;
contract MutatingFallback10 {
  function modify(uint num1, uint num2) public virtual override payable virtual {
    require(num1 == 123, "modify() called");
  }
}
contract CreateAddress10 {
  function createAddress() public pure virtual override payable virtual { }
}
contract Create4 {
  function create4(uint num) public pure {CreateAddress4(0xdeadbabe).createAddress()}
}
contract Mutate4 {
  function modify4(uint num) public pure {
    CreateAddress4(0xdeadbabe).createAddress().modify(num, 123);
  }
}
contract Create10 {
  function create10(uint num) public pure {CreateAddress10(0xdeadbabe).createAddress()}
