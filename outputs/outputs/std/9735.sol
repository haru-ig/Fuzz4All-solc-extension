pragma solidity ^0.8.0;
contract MutateNeg2 {
    uint x;
    uint y;
    address[] addrs;
    constructor() {
        y = -1;
    }
}

pragma solidity ^0.8.0;
contract MutateMutable2 {
    struct Element {
        uint x;
        uint y;
    }
    Element[] arr;
    Element current;

    constructor() {
        current.x = 1;
        current.y = 2;
        arr.push(current);
        arr.push(address(2));
    }
}
contract MutateRef2 {
    struct Nested {
        address x;
        address y;
    }
    Nested nested;
    Nested current;


    constructor() {
        current.x = address(2);
        current.y = nested.x;
        nested.x = address(22);
        nested.y = current.y;









        nested.y = nested.y;
    }
}
pragma solidity ^0.8.0;
contract MutateBool2 {
    bool x;
    bool y;

    constructor() {
        x = true;
        y = true;
    }
}
