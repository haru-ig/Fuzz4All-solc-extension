pragma solidity ^0.8.0;
contract H {
    constructor() {
      address a = address(0x1);
      address b = a;
      address c = b + 6;
      emit H();
    }
}
contract Mutant {

    function mutant(uint256 i, uint j) public {
    }
}

pragma solidity ^0.8.0;
contract H {

    constructor() {

      Mutant a = new Mutant();

      K k = new K();

      H h = new H();

      H h2 = h();

      a.mutant(2, 3);
    }
}
