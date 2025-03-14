pragma solidity ^0.8.0;
contract FallbackMutator {
    function shouldBe(uint counter) internal view returns (bool) {
        require(counter >= 1, "Wrong counter");
        counter++;
        return true;
    }
}

pragma solidity ^0.8.0;
contract CallER {
    contract MutatorA is Mutator {
        fallback() external pure {
            MutatorA a;
            a.shouldBe(1);
        }
    }
    contract MutatorB is Mutator {
        fallback() external pure {
            MutatorB b;
            b.shouldBe(1);
        }
    }
    address[1] mut addresses;
}

pragma solidity ^0.8.0;
contract CallERB {
    contract MutatorA is Mutator {
        fallback() external pure {
            MutatorA a;
            address[] memory addrs;
            bytes memory data = hex"6060604052600436106101695763000000000000000000000000000000000000000001908101906129e165627a7a723058203695a23ef74e1b7b0b482b5df2f2a6582a26d560134cf7381d11e74824d840d619af460a2167a8e78fe8bd62cf70291836967ab220ad680993435c4931f22e67374036c401a47ae";
            (bool success, ) = a.delegatecall(data);
            require(success, "Unable to call mutated contract");
        }
    }
    contract MutatorB is Mutator {
        fallback() external pure {
            MutatorB b;
            b.shouldBe(1);
        }
    }
    address[1] mut addresses;
}
