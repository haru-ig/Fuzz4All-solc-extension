pragma solidity ^0.8.0;
contract Mutated15{
    function mutated15(uint[5] memory a) public pure returns (uint) {
        uint b = 15;
        a[0] = 15;
        return a[0];
    }
}

```
<br>
**Task 3.** Using the provided instructions:

1. Create an executable `solc` command line tool to modify your project. Name your executable solc.sol and place it at the root of your project folder.
2. Add the `mutated15` contract as an implementation for the `Mutated15` contract.
2. Create a file `mutated15.test.js` and add the following code in this file:
```js

const a = [16, -10, 15, 20];

require('solc-utils')
  .verify('contract Mutated15 is Mutated15{ function mutated15(uint[2] memory) pure returns (uint) { return 100 / 5; }}')
  .then(result => {

        console.log(result);
        expect(15 / 2).toBe(0.75);
    }).catch(e => {
        console.log('Error while running solidity: ');
        console.log(e);
    });
```
3. Modify the `solc.js` file, by running `solc --compile-as-ynemtative --solfile mutated15.sol`.
4. Add a `tests` directory at the root of your project. Create a new file at that level called `Tests.sol`, and add the following code to it:
```Solidity

pragma solidity >=0.8.0 <0.9.0;
import "./mutated15.sol";
import "../../test.sol";
contract AllTests is Test {
    function mutated15() public {
        uint[2] memory a = [1, 2];
        uint [2] memory result;
        result = Mutated15.mutated15(a);
        test_expect(result[0] == 15);
        test_expect(result[1] == 30 / 2);
        test_pass();
    }
}
```
5. Modify the file `mutated15.sh` and add the following command at the end of it:
```sh
mkdir -p./build/ &&./solc --bin --optimize --bin-runtime./mutated15.sol./tests/ Tests.sol
```
6. Modify the file `mutated15.sh` and add the following command at the beginning of it:
```sh
chmod +x./mutated15.sh
```
7. Modify the file `mutated15.sh` and add the following commands at the end of it:
```sh
