pragma solidity ^0.8.0;
contract good {
	uint public counter = 0;
	uint public data_public = 0;
    constructor() payable {

        data_public += 5;

        data_public += 1;
        counter += 2;

        data_public += 5;
    }
}
```
