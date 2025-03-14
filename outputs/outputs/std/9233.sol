pragma solidity ^0.8.0;
contract MutatingContract {
    uint private counter;

    function run() public {
        uint counter = getCounter();
        if(counter == _counterAdd) {
            counter = _counterAdd == uint(-1)? counter : counter + _counterAdd;
        } else {
            counter = _counterAdd == uint(-1)? counter : counter + _counterAdd;
        }
        setCounter(counter);
    }

    function mutate() private view {
        uint addX = uint(uint8(15));
        uint subtractX = (_counterSub % 2 - 1 + addX) % 2 - 1 + addX;

        uint divideX = (_counterSub >= _counterMul? _counterSub : addX) / subtractX;
        uint multiplyX = 2 * (_counterSub / divideX) + addX;
        uint divideAndMultiplyX = divideX * multiplyX;
        uint add =  divideAndMultiplyX + addX;

        uint subtract = subtractX - (divideAndMultiplyX % subtractX);
        _counterSub = subtract;
    }

    function getCounter() public view returns (uint) {
        return counter;
    }

    function setCounter(uint value) public {
        counter = value;
    }
}
