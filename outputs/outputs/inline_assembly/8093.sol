pragma solidity ^0.8.0;
contract NewMutated {
    enum DrinkClass {Regular, Red, Green, Pumpkin}

    struct Drink {
        uint256 price;
        DrinkClass drinkClass;
        string name;
    }
    Drink[] private drinks;
    mapping(address => uint256) private totalPaid;
    DrinkClass private drinkClass;
    uint256 private numDRinks;
    constructor(address payable owner) public {
        drinkClass = DrinkClass.Regular;
        addDrink(owner);
    }
    modifier onlyOwner() {
        require(msg.sender == owner(), "This function can only be called by the owner");
        _;
    }

    function addDrink(address owner)
        public
        payable
        returns (address payable)
    {
        require(drinkClass == DrinkClass.Regular, "Can only add drinks once");
        Drink memory newDrink = Drink(totalPaid[owner], drinkClass, DrinkClass.Regular.toString());
        newDrink.price = msg.value;
        newDrink.name = DrinkClass.Regular.toString();
        drinks.push(newDrink);
        numDRinks++;
        totalPaid[owner] += msg.value;
        _;
    }

    function setDrinkClass(uint8 drinkClass)
        public
        onlyOwner
    {
        drinkClass = DrinkClass(drinkClass);
    }

    function finishDrink() public onlyOwner
    {
        require(_drinksPaid(totalPaid[msg.sender]));
        totalPaid[msg.sender] = 0;
        _drinksPaid(totalPaid[msg.sender]);
        drinkClass = drinkClass.next();
        numDRinks--;
    }
    function getDrink() public view returns (string memory drinkClass)
    {
        drink
