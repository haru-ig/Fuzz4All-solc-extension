pragma solidity ^0.8.0;
interface MutatedInterface {}
contract MutatedContract is MutatedInterface {
    function mutatedFunction() {

    }
}

pragma solidity ^0.8.0;
interface MutatedInterface {}
contract MutatedContract {
    struct Fruit {
        uint quantity;
        uint price;
    }

    mapping(uint => Fruit) public fruits;

    function addFruit(Fruit memory fruit) public {
       fruits[fruit.quantity] = fruit;

    }

    function removeAllFruits() public {


        uint[] memory _idsToDelete = [fruit.quantity,...];
        assembly {
            delete fruits(_idsToDelete)
            for (uint256 i:=0; i < 3; i++) {
                delete fruits{i+1}
            }
        }
    }
}
