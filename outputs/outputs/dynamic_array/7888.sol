pragma solidity ^0.8.0;
contract Test24 {
    uint[] public foo;
    constructor(uint[] memory) public {
        unchecked {
        }
        foo = foo;
    }
}
contract Test25 {
  uint[] public foo;
  constructor(uint[] calldata) public {
    unchecked {
    }
    foo = foo;
  }
}
contract Test26
{
uint[] public bar;
constructor (uint[] memory) public {
    unchecked {
    }
    bar = bar;
}
function f(uint[] memory) public payable {
    unchecked {
    }
    bar = bar;
}

}
contract Test27
{
uint[] public bar;
constructor (uint[] calldata) public {
  unchecked {
    }
    bar = bar;
}
function f(uint[] calldata) public payable {
    unchecked {
    }
    bar = bar;
}
}
