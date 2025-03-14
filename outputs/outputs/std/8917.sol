pragma solidity ^0.8.0;
contract ExampleStruct9 {
    uint a;
    constructor(uint a_) { a = a_ - 100000000000; }
}

pragma solidity ^0.8.0;
contract ExampleStruct9 {
    uint a;
    constructor(uint a_) { a = a_; }
    function () external payable { a += 1000000000000; }
}
