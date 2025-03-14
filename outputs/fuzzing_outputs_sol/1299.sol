pragma solidity ^0.8.0;
contract Contract {
        receive() external payable {}
}
pragma solidity ^0.8.0;
contract Contract {
        receive() external payable {}
}


pragma solidity ^0.8.0;
contract ContractA {
    uint256 public constant value = 1;
    uint256 public constant maxValue = uint256(1);
    constructor() {
    }
    function isMax() public returns (bool) {
        return value >= maxValue;
    }
    fallback() external payable {
    }
}

pragma solidity 0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Caller is ERC20 {
    uint256 public constant value = 1;
    constructor() ERC20("Caller", "CAL", 18) {
    }
    function isMax(address _address) public override view returns (bool) {
        return owner().transferFrom(msg.sender, _address, value);
    }
    function sendEther(address _address) external payable {
        owner().transferFrom(msg.sender, address(this), value);
        address(this).transfer(msg.value);
        emit Log(msg.sender, msg.value);
    }
    event Log(
        address indexed from,
        uint256 value
    );
}
