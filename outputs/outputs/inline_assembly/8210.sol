pragma solidity ^0.8.0;
contract Mutated2 {
    uint256 public a;
    uint128 public b;
    function decrease() external {
        a = a-10;
    }
    function decreaseOne() external {
        a = a-1;
    }
    function decreaseBoth() external {
        decrease();
        decrease();
    }
    function decreaseThree() external {
        decrease();
        decrease();
        decrease();
    }
}
contract Mutated {
    function mutatedFunction(
        uint256 _a,
        uint128 _b,
        uint256 _a,
        uint128 _b) public returns(uint256) {
        return _a - _b;
    }

    function mutatedFunction(
        uint256 _a,
        uint128 _b,
        uint256 _a,
        uint128 _b,
        uint256 _a) public returns(uint256) {
        return _a - _b;
    }


    function mutatedFunction(
        uint256 _a,
        uint128 _b,
        uint256 _a,
        uint128 _b,
        uint256 _a,
        uint128 _b) public returns(uint256) {
        return (_a-_b) - (_a-_b);
    }
}
```
## How to compile the above code sample:
```
$ solc --abi --optimize-runs=1000 --bin Mutated3.sol
```
## Output
```
Compiled successfully.
```
## How to test the above program?
```
$ truffle test./build/contracts/Mutated3.json -b test --network coverage --reset

Running 3 test cases...
...
```
