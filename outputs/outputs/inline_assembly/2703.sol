pragma solidity ^0.8.0;
library Library {
    uint constant private name1 = 3;
    uint constant public public1 = 23;
    uint constant public public2 = 5;
    uint constant public public3 = 18;
    uint constant public public4 = 14;
    uint constant public public5 = 11;
    uint constant public public6 = 1;
}

contract D is Library {
    address payable public alice;
    address payable public bob;
    mapping (uint => string) public name;
    function D() public {
        alice = payable(0);
        bob = payable(address(1));
        name[1] = "Alice";
        name[2] = "Bob";
    }
    function setValue(uint x) public {
        uint storage var = names;
        name[names] = "";
        var = names + 1;
        D(address(this)).setValue(x * 3);
    }
    function getValue() public view returns (uint) {
        return uint(5 * value);
    }
}

contract E is D {
    constructor() public {
        D(1).setValue(1 + 1);
    }
}


pragma solidity >=0.5.18;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/main/contracts/token/ERC20/ERC20.sol";
contract Test is ERC20 {
    constructor() ERC20("Test", "test") public {
        totalSupply = 20 ether;
        balanceOf[msg.sender] = 20 ether;
    }
}
```

The EVM-based [compiler](https:

```bash
> solc -Z --experimental-ast-compiler < contract.sol
      |______________|
  |________________________________________________________________
/ ___________ ____________ ____________ _________________________________ _
|                   |                  |
|                   |__________________|
|___________________________________________________________________________
|_________________________________________________________________________

(Error) < contract.sol:1:16: CompilerError: Invalid assignment
  |
1 | contract Test =
    |
----------------------------------------------
  |_________________________|
                 |____|
  |____________________|
  |____________________|

```
