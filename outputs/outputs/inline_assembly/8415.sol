pragma solidity ^0.8.0;
contract SolveAssembly
{

    function test2() public pure returns(uint) {
        return 0xAd34;
    }
}
```

## 2.8 4. Function modifiers

Function modifiers allow you to grant specific behaviors to a function, using regular assembly language.

A Modifier function is a function that is responsible for performing some action prior to the execution of a function. The name Modifier functions is short for modifier.
```
pragma solidity ^0.8.0;

contract Main {


    modifier onlyFirst() {

        if (_isFirst()) {
          _;
        }
    }

    function _isFirst() internal view returns(bool) {
        return true;
    }

}
```
```
pragma solidity ^0.8.0;

contract Hello {





    function main() external onlyFirst contractSize(msg.sender, msg.value) {
      ...
    }

    function contractSize(address _to, address _from, uint _amount) external limitContractSize(_to, _from, _amount) pure returns(bool result) {
      result = _to.call{value: _amount}("");
      return true;
    }

}
```

## 2.9 5. Functions

Contract functionality is typically defined by several functions, but Solidity is case-insensitive, meaning multiple functions may share the same name. Solidity also has a function parameter list called in arguments which is defined by the input parameter type. Arguments are the basic unit of function input and can be passed to any other function. We can define additional input parameters inside a function body, just before or after the function declaration.

For example, suppose we wanted to create a function that could calculate a given number in the form 8x + 7. To do this, we would need to first create a new function, which has both arguments x and y as input values. We can make this happen by adding this to the declaration and then later simply adding the parameters to the body of our function:
```
function add(uint x, uint y) returns(uint)
{
    return x + y;
}
