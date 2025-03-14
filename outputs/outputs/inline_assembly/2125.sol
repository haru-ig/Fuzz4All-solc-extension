pragma solidity ^0.8.0;
contract Mutation
{

    function xIsBigger(uint x, uint y) public pure returns (bool) {
        return x > y;
    }


    function yIsBigger(uint x, uint y) public pure returns (bool) {
        return x > y;
    }

    function doIt() public pure returns (u64 v) {
        v = 55;
        v /= v;
        v += v;
    }
}
```

## Test your code

You can run your test by typing in

```bash
npx hardhat test <YOUR_CONTRACT_NAME> --network <NETWORK_NAME> -s <NUMBER_OF_FUNCTIONS_TO_RUN>
```

For example, to execute all the tests of this contract

```bash
npx hardhat test Same --network rinkeby --verbose -s 5000
npx hardhat test mutation --network rinkeby --verbose -s 300
npx hardhat test mutation --network rinkeby --verbose -s 300
```

and to execute all the tests of this contract with a gas limit of 0.3 ether

```bash
npx hardhat test Same --network rinkeby --verbose -s 2000 -f 0.3e18
```

and to execute these tests using a gas budget of 5000 gas

```bash
npx hardhat test Same --network rinkeby --verbose -s 2000 -b 5000
npx hardhat test mutation --network rinkeby --verbose -s 300 -b 5000
```
