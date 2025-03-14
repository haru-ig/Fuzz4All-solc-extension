pragma solidity ^0.8.0;
contract MutatedDynamicArrayTypeCheck {
    struct ArrayItem {
        bool b;
    }
    ArrayItem[] public a;
    uint public aLength;
    constructor ()
    {
        a.push(ArrayItem(false));
        aLength++;
    }
    function updateArray() public {
        a.pop();
        aLength--;
    }
}


pragma solidity ^0.8.0;
contract ReentrancyGuard {

    uint256 private _lock;

    constructor () internal {
    }

    modifier nonReentrant()
    {


        require(_lock == 0, "ReentrancyGuard: reentrant call");


        _lock = 1;
        _;



        _lock = 0;
    }
}
