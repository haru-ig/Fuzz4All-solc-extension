pragma solidity ^0.8.0;
import "@openzeppelin/contracts/utils/math.sol";
import "hardhat-gas-reporter/src/interfaces/IERC20.sol";
import "../../utils/math.sol";
contract SimpleFallbackExample {
    using Math for uint256;
    IERC20 public ERC20;
    constructor(address _ERC20Address) public {
        ERC20 = IERC20(_ERC20Address);
    }
    function transfer(address _to, uint _amount) external {
        if (ERC20.transfer(_to, _amount)) {
            uint256 gasSpent = gasleft();

            ERC20.transfer(_to, _amount.mul(8));
            uint256 estimatedGasCost = gasSpent.mul(2);
            uint256 gasPrice = gasPricePerGasUsed(gasSpent);
            if (
                gasPrice >= minGasPrice(estimatedGasCost.add(8)) &&
                gasPrice < maxGasPrice(gasSpent)
            ) {

            }
        }
    }
}
```
<img src="https://github.com/TheThingsIndustries/thethingsindustries.github.io/blob/main/docs/smart_contracts/fallback.JPG?raw=true">
