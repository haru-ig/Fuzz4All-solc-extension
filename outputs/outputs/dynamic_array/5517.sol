pragma solidity ^0.8.0;
import "./Test71.sol";
contract Test71Mutator is Test71 {
    constructor() public {
        selfdestruct(address(0));
    }
    bool internal dead = true;
    function bar() external virtual returns(int32) {
        if(!dead) selfdestruct(address(0));
        dead = true;
        return 0;
    }
}
