pragma solidity ^0.8.0;
contract Mutatation {
    uint[] public numbers1;
    uint[] public numbers2;
    uint[] public numbers3;
    function add(uint _a, uint _b) public returns (uint) {
        uint sum = _a + _b;
        return sum;
    }
    function subtract(uint _a, uint _b) public returns (uint) {
        uint diff = _a - _b;
        return diff;
    }
    function multiply(uint _a, uint _b) public returns (uint) {
        uint product = _a * _b;
        return product;
    }
    function divide(uint _a, uint _b) public returns (uint) {
        uint quotient = _a / _b;
        return quotient;
    }
}
```



## Additional Information


## License

See `LICENSE` for license information.

## Contribute

We welcome your contribution! Please see [CONTRIBUTING.md](/CONTRIBUTING.md) for information on submitting patches and submitting pull requests.


[README]: /README.md "Solidity Documentation"
