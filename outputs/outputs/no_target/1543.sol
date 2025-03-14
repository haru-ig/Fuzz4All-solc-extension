pragma solidity ^0.8.0;
contract Semantic0022 {
    function equal() public pure {
        uint128[] memory y = new uint128[](4);
        while(true) {
            y[0] = 0;
        }
    }
}

contract Semantic0023 {
    function equal() public pure {
        uint[3] memory y = new uint[3](10);
        uint32 c;
        uint[] memory f;
        while(true) {
        }
    }
}

```

## Changelog
- v0.4.8
    - Add the `Semantic.Equal` contract and demo project
    - Upgrade and refactor other contracts
- v0.4.7
    - Add more new demos
    - Improve comments
    - Add a new version in demo project
- v0.4.6
	- Add the `Semantic.FixedPointSafeMath` contract
    - Move the `Semantic.CheckEquality` contract to tests
- v0.4.5
    - Add the new version in the demonstration project
- v0.4.4
    - Add the `Semantic.FixedPointSafeMath` contract
    - Add checks and refactor the `Semantic.CheckEquality` contract
    - Refactor the `FixedPointSafeMath` contract to be compatible to the new contract
- v0.4.3
	- Add the `Semantic.Arithmetic` contract
    - Add the `Semantic.ArithmeticSafeMath` contract
    - Add the `Semantic.FixedPointArithmeticSafeMath` contract
- v0.4.2
    - Add version 3.0.0-alpha.5 of `Semantic.Arithmetic` contract
- v0.4.1
    - Add version 3.0.0-alpha.3 of `Semantic.ArithmeticSafeMath` contract
- v0.4.0
	- Switch the `Semantic.Arithmetic` contract to Solidity 0.7.7
- v0.3.2
	- Add version 2.0.0-alpha.8 of new `Semantic.Arithmetic` contract
- v0.3.1
    - Added `Semantic.ArithmeticSafeMath` contract
    - Added `semantic/config.sol` with `Constants` contract
- v0.3.0
	- Upgrade to Solidity 0.7.6
    - Add a new version `Semantic.Base` contract
- v0.2.5
	- Upgrade to Solidity 0.7.5
- v0.2.4
	- Upgrade to Solidity 0.6.6
- v0.2.3
    - Added `Semantic.Arithmetic` contract
    - Changed `Semantic.Arithmetic` to `Semantic.ArithmeticSafeMath` contract
- v0.2.1
    - Add `Semantic.Arithmetic` contract
    - Added `semantic/config.sol` with `Constants` contract
- v0.2.0
    - Add the `Semantic
