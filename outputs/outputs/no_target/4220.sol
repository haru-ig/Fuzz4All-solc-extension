pragma solidity ^0.8.0;
contract P13 {
  function modify(uint x) public {
    x = 1000000000000;
  }



  function modify2(uint x) public modifier returns(uint) {
    x = 1000000000000;
    _;
  }

  function modify3(uint x) public modify(x + 1) {
    x = 1000000000000;
  }

  function modify4(uint x) public nonReentrant {
    modifyModifier(x);
    x = 1000000000000;
  }

  function modifyModifier(uint x) public modifier {
    x = 2000000000000;
    _;
  }










  function nonReentrant() nonReentrant external {
    modify4(0);
  }

  function nonReentrant2() nonReentrant external {
    nonReentrant();
    modify4(0);
  }

  function nonReentrant3() nonReentrant external {
    nonReentrant2();
    modify4(0);
  }

  function nonReentrant4() nonReentrant external {
    nonReentrant3();
    modify4(0);
  }

  function nonReentrant5() nonReentrant external {
    nonReentrant4();
    modify4(0);
  }



  function test() public {
    modify4(0);
  }



}

pragma solidity ^0.8.0;
contract P14 {
  function main() public view {
    P13 c = new P13();
    uint x = c.i(0);


    c.modify(200000000);

    uint v = (c.i(x + 1) + 1) / 2;


    c.modify(2
