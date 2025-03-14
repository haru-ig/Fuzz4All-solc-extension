pragma solidity ^0.8.0;
contract MyContract{
    uint aNumber;

    function setup() public {
      aNumber;
      aNumber = 123;
    }

    receive() {}
}

pragma solidity ^0.8.0;
contract MyContract{
    uint aNumber;

    constructor() {
      aNumber = 123;
    }

    function setup() public {
      aNumber;
      aNumber = 123;
    }

    receive() public pure {}
}
