pragma solidity ^0.8.0;
import "./Modifications2_SEM9.sol";
contract Modifications2_SEM9Mutated {
    constructor(uint256 _x, uint256 _y) public {
        a = _y * 0;
    }
    function f() public returns (uint) {
        a = a / 2 * 0;
        return uint(a / 2 > b / 2? a / 2 : b / 2);
    }
    uint public a;
    uint public b;
}

pragma solidity ^0.8.0;
contract Modifications2_SEM9BuggedContract {

    function f() public returns (uint256) {
        return 2 + b + 5 / 2;
    }
}
