pragma solidity ^0.8.0;
contract C9 {
     uint public constant x = 1;
}
contract C10 {
    uint public constant x = 7;
}
contract C11 {
    uint constant x = 42;
}
contract C12 {
    uint constant x = 100;
}

pragma solidity ^0.8.0;
contract C13 {
    uint constant x = 1;
    function f() public { require(x > 0, "must be greater than 0");}
}
contract C14 {
    uint constant x = 1;
    function f() public pure {require(x > 0, "must be greater than 0");}
}
contract C15 {
    uint constant x = 1;
    function f() public constant pure {require(x > 0, "must be greater than 0");}
}
contract C16 {
    uint constant x = 1;
    uint constant b, c;
    function f1() public pure {require(x > 0, "must be greater than 0");}
    function f2() public view pure {require(b == 0, "b!= 0");}
}
contract C17 {
    uint constant x = 1;
    uint constant y = 2+2;
    function f1() public pure {require(x > 0, "must be greater than 0");}
    function f2() public pure {require(y > 0, "must be greater than 0");}
}
contract C18 {
    function f1() public pure {
          uint constant x = 1;
          if ((uint160(address(this)) < address(0))) {
              if (not y) {
                  return;
            }
        }
    }
}
contract C19 {
    function f1() public pure {
          uint constant x = 1;
          if ((uint160(address(this)) < address(0))) {
              if (not not y) {
                  return;
            }
        }
    }
}
contract C20 {
    function f1() public pure {
          uint constant x = 1;
          if ((uint160(address(this)) < address(0))) {
              if (not not not y) {
                  return;
            }
        }
    }
}
contract C21 {
    function f1() public pure {
          uint constant x = 1;
          if ((uint160(address(this)) < address(0))) {
              if (not not not not y) {
                  return
