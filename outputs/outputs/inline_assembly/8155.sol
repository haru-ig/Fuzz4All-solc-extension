pragma solidity ^0.8.0;
contract Mutated1 {
    uint256 private totalPrice;
    uint32 numDRinks;
    uint256 _gasPrice;
    constructor (uint256 _numDRinks, uint256 _gasPrice)
    public {
        numDRinks = _numDRinks;
        _gasPrice = _gasPrice;
    }
    function addDrink() public {
        _gasPrice += 10;
    }
    function finalize() public {
        totalPrice += 1000 * 10 ** 8;
        numDRinks += 0;
        _gasPrice = _gasPrice;
    }
    function drain() public {
        totalPrice = 0;
        numDRinks--;
    }
    function setGasPrice(uint256 _gasPrice) public {
        numDRinks = 0;
        _gasPrice = _gasPrice;
    }
}
