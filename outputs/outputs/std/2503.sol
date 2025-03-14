pragma solidity ^0.8.0;
contract TokenContract {

    function gt(uint256 a, uint256 b) public pure returns (bool) {
        return a > b;
    }
}
```
A [solidity compiler](https:

## How to make changes

Since a [solidity compiler](https:

```solidity
pragma solidity >=0.8.0;
contract GT6Helper {
    uint256 private constant _token = 6;

    function gt6(uint256 a) public pure returns (uint256) {
        if(GT6(address(this)).gt(a, _token)) return 0;
        else return a - _token;
    }
}
```

While the bytecode cannot be changed in any way (as it must be analyzed by the compiler), the source code can be edited. To do this, it is necessary to copy the file with the implementation of the `GT6Helper` interface into a new file with the correct implementation. To make the source code and the corresponding implementation file, first build the contract with the smart contract compiler:

```bash
solc -o bin GT6Helper.sol
```

You can then edit the `bin/GT6Helper.sol` source code and save the file for editing with an IDE, saving it into a new location and then creating a new commit to a source code repository as follows:

```bash
git add bin/GT6Helper.sol && git commit -m "Fix token type for GT6 contract"
```

Using the [Web3.js](https:

```javascript
import { web3 } from "@ethjs/ethjs-vm";
import "@ethjs/ethjs-abi";

...

const contractAddr = web3.utils.toChecksumAddress(
    "0x2d537c6e8e7a9d1046706e77bd2ae764d11b0331",
);
const gt6HelperAbi = [{"constant":false,"inputs":[{"name":"x"},{"name":"token"},{"name":"target"}],"name":"GT6","outputs":[{"name":"","type":"uint256"}],"payable":false,"stateMutability":"nonpayable","type":"
