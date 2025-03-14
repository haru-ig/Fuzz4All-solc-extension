pragma solidity ^0.8.0;
library Drink {
struct Drink{
    uint256 price;
string name;
}
}
contract NewSemanticallyEquivalent {
    Drink[] public drinks;
    uint256 public totalPrice;
    uint256 public numDrinks;
    function create() public {
        drinks.push(
            Drink(4, "Black Milk")
        );
        numDrinks = drinks.length;
    }
    function reducePrice() public {
        drinks[uint256(drinks.length)-1].price = 1 * 10 ** 18;
        numDrinks++;
    }
    function addDrink() public {
        drinks.push(
            Drink(4, "Black Milk Red Rising Jug")
        );
        totalPrice = totalPrice + drinks[uint256(drinks.length-1)].price;
        numDrinks += 2;
    }
    function finalize() public {
        drinks[uint256(drinks.length)-1].name = "Black Milk Red Rising Jug";
        numDrinks--;
    }
}



pragma solidity ^0.8.0;
contract Test {
function create() public {
NewMutated mutated = new NewMutated();
mutated.create();
mutated.reducePrice();
mutated.addDrink();
mutated.finalize();
NewSemanticallyEquivalent semanticEquivalent = new NewSemanticallyEquivalent();
semanticEquivalent.create();
semanticEquivalent.reducePrice();
semanticEquivalent
