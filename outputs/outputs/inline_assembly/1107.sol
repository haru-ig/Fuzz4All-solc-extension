pragma solidity ^0.8.0;
contract MutatedContract {
  uint _x;
  constructor () {
    _x = _calculate_();
  }
  function _calculate_() internal view returns (uint) {
   uint i = _x + 10;
   return i;
  }
}
contract Mutator {

  MutatedContract [3] _mutants;

  modifier mutated() {
    require(_mutants[_index_].x!= _calculate_(), "");
    console.log("Mutated: ", _index_);
    _;
  }
  constructor () {
     _mutants[0] = new MutatedContract ();
     _mutants[1] = new MutatedContract ();
     _mutants[2] = new MutatedContract ();
  }

  function modifyNumber(uint _target) view mutated returns (uint) {
    uint i = _x;
    return _target + i;
  }

  function modifyNumber2() view mutated returns(uint) {
    uint i;
    i = _x;
    return i+2;
  }

  function modulus() view returns (uint) {
    uint j = _x+4;
    return j;
  }
  uint get private _x() view modifiable;
}

```

<br/>


<br/>

---
<br/>

<img src="/assets/img/Blockchain/Solidity/solidity-logo-transparent.png" alt="Logo" height="100" width="100" align="left">

# Contracts vs. Solidity

The solidity language is the second most used programming language, the majority of code, for which the solidity maintainers use it are written in solidity.

At the moment it's the default language for most software, but the rise of the blockchain, is a major driving force for developing smart contracts. It is being standardized and it is also supported by most popular network providers (such as Etherscan, Infura, Arbitrum,...)

The goal is to build a community and incentivize developers to write smart contracts. To achieve this, different developers write smart contract in their preferred language, such as Solidity, Golang, or typescript. However, the smart contracts themselves are written in two languages.
- First, for testing the contracts, it is recommended to use test solidity and ganache
- Second, in most cases, the contract can only be deployed in one language. For example, the contract created by the smart contract developer can only be created and deployed in Solidity. However, a contract designed for a future language that can be compiled in Solidity and deployed in Golang, or other programming language,
