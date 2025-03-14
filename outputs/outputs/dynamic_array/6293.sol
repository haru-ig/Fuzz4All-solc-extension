pragma solidity ^0.8.0;
library l {
  struct s {
    uint a;
  }
  function set(address payable c) public payable {}
}

pragma solidity ^0.8.0;
library l {
  struct s {
    uint a;
  }
  function set(address payable c) public payable returns(uint x) {}
}

pragma solidity ^0.6;
contract A {
    require(l.get().a == 1);
    function call(uint h) returns(uint) {
        uint i = 0;
        for (uint j = 0; j < h * 100; j++) {
            i += 1;
        }
        uint x = l.f(50, "Hello!");
        x = 1;
        return(1);
    }
}
