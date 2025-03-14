pragma solidity ^0.8.0;
contract NewContract {
    address public c1;

    constructor(address _c1) public {
      c1 = _c1;
    }

    function mutatedFunction() public view returns (uint, uint) {
        (uint, uint) memory i = (1u << 1, 64);









        require(false, "Invalid expression");
        return (2u, minValue);
    }
}
