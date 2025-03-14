pragma solidity ^0.8.0;
contract Storage {

    uint private value;
    function set(uint _val) public {
        value = _val;
    }
    function get() public view returns (uint) {
        return value;
    }
}


pragma solidity ^0.8.0;
contract StorageExample {
    Storage public s;
    constructor() public {
        s.set(2000);
    }
    function get() public view returns (uint x) {
        return s.get();
    }
}


pragma solidity ^0.8.0;
contract DrinkerExample {
    uint256 private _availableWater = 100000000;

    event DrinkFinished(uint256 amount);
    constructor() public { }
    function drink(uint256 amount) public {
        require(_availableWater >= amount, "The given amount is greater than the sum of available water.");
        _availableWater -= amount;
        require(_availableWater >= 0, "The water amount is negative.");
        emit DrinkFinished(amount);
    }
    function availableWater() public view returns (uint256) {
        return _availableWater;
    }
    function setAvailableWater(uint256 _availableWater) public {
        require(_availableWater > 0, "The new available water cannot be smaller than 0.");
        _availableWater = uint256(_availableWater);
    }
    function resetAvailableWater() public
