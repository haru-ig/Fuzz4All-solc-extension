pragma solidity ^0.8.0;
contract SolidityTestContract {
    constructor() {
        x_ = Unmutate.x_ + 1;
    }

    function update() public {
        x_ = Unmutate.x_ + 1;
        require(address(0)!= address(x_));
    }
}
