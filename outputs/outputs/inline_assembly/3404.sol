pragma solidity ^0.8.0;
contract Mutability4 {

  uint immutable constant zero = 0;

  uint constant one = 1;
  uint constant value = one + 1;

  mapping (uint => uint) private map;
  uint public a;

  constructor () {
    map[zero] = value;
  }

  function add () public {
    map[one] = map[one] + 1;
  }

  function() external payable {
    map[b] += 1;
  }
}

contract Mutability6 {
  uint public constant false_value = 0;
  uint public constant true_value = 1;
  uint public constant one = 1;
  uint public constant value = one + 1;
  mapping (uint => uint) private map;
  uint public a;
  constructor () {
    map[true_value] = value;
  }

  function add () public {
    map[false_value] = map[false_value] + 1;
  }

  function() external payable {
    map[b] += 1;
  }
}

contract Mutability7 {
  uint public constant false_value = 0;
  uint public constant true_value = 1;
  uint public constant one = 1;
  uint public constant value = one + 1;
  mapping (uint => uint) private map;
  uint public a;
  constructor () {
    map[true_value] = value;
  }

  function add () public {
    map[false_value] = map[false_value] + 1;
  }

  function() external payable {
    map[b] += 1;
  }
}

contract Mutability8 {
  uint public constant false_value = 0;
  uint public constant true_value = 1;
  uint public constant one = 1;
  uint public constant value = one + 1;
  mapping (uint => uint) private map;
  uint public a;
  constructor () {
    map[true_value] = 2;
  }

  function add () public {
    map[false_value] = map[false_value] + one;
  }

  function() external payable {
    map[b] += 1;
  }
}
