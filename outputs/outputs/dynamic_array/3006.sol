pragma solidity ^0.8.0;
contract mutation_EqualityArrayDynamic {
    uint[] internal x = [1];
    modifier my_m() {
      x.push(1);
      _;
      x.push(3);
    }
        function f() public my_m payable { }
}
