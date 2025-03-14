pragma solidity ^0.8.0;
import "./Test71.sol";
contract Test71Mutated is Test71 {
    constructor() public {
        num1 += 1;
        bar();
        bar();
        num1 += 1;
        bar();
        bar();
    }
    function bar() public pure virtual {
        num1 += 1;

        num1 += 1;

        bar();
        bar();
    }
}
