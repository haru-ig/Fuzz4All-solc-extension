pragma solidity ^0.8.0;
contract IBWrapper is BWrapperInterface {
    function () external payable {
    }
}
contract BWrapper is IBWrapper {
}

```
