pragma solidity ^0.8.0;
contract Mutated_5_1 {
    function max(uint x, uint y) public pure returns (uint) {
        uint c;
        assembly { c := x < y? x : y }
        return c;
    }
}
```

## 5.3. A mutated and tested contract

6.3.2.2. Test the new solution
```
cd solution
solc -c -o generated/Mutated_5_0_aMutated_5_0.sol Mutated_5_0_aMutated_5_0.sol
solc -c -o generated/Mutated_5_1_aMutated_5_1.sol Mutated_5_1_aMutated_5_1.sol
./Mutated_5_0_aMutated_5_0
./Mutated_5_1_aMutated_5_1
```

## 5.4. Bonus solution
```






























```

## 5.5. Bonus solution explained
```
type for loop which iterates an array is equivalent to an iterating a contract
```
