pragma solidity ^0.8.0;
contract MutateSemantic5Caller4 {
    function modifyC(uint256 x, uint256 y, uint z) public pure returns (uint) {
        return 2*(x) + y + z;
    }
}

pragma solidity ^0.8.0;
contract MutateSemantic5Caller5 {
    uint256 public x;
    uint256 public y;
    uint256 public z;
    constructor() {
        x = y = z = 2*x + y;
    }
    function modifyC() public pure returns (uint) {

        return 2*x + y + z;
    }
    receive() external payable {
      emit Transfer(address(this), msg.sender, msg.value);
    }
}

pragma solidity ^0.8.6;
