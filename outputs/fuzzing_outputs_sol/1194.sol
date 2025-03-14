pragma solidity ^0.8.0;
contract SemanticsEquivalence2 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() public { data = Data(5, 13, 7); }
    fallback() internal { }
    function send(uint _x1, uint _x2, uint _x3) public payable { data.x1 = _x1; data.x2 = _x2; data.x3 = _x3; }
    function run(uint _x1, uint _x2, uint _x3) public { }
}
contract SemanticsEquivalence3 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() public { data = Data(5, 13, 7); }
    function run(uint _x1, uint _x2, uint _x3) public { }
    fallback() public payable { }
}
contract SemanticsEquivalence4 {
    struct Data { uint x1; uint x2; uint x3; }
    Data internal data;
    constructor() public { data = Data(5, 13, 7); }
    fallback() public { }
    receive() public payable { }
}
contract SemanticsEquivalence6 {
    fallback() public payable { }
}
contract SemanticsEquivalence7 {
    address public fallbackContract;
    constructor() public { fallbackContract = msg.sender; }
    fallback() public payable external { }
}
contract SemanticsEquivalence8 {
    function run(uint _x1, uint _x2, uint _x3) public { }
    fallback() payable external { }
}
contract SemanticsEquivalence9 {
    function run(uint _x1, uint _x2, uint _x3) public { }
    fallback() public { revert(); }
    receive() external payable { revert(); }
}
contract SemanticsEquivalence10 {
    function run(uint _x1, uint _x2, uint _x3) public { }
    fallback() public { }
    receive() payable { revert(); }
}
contract SemanticsEquivalence11 {
    constructor() {
        uint x = uint(contract(new SemanticsEquivalence10()).x);
    }
}
contract SemanticsEquivalence12 {
    fallback() public payable { }
}
contract SemanticsEquivalence14 {
    function foo() public payable { }
    fallback() public payable { }
    receive() external payable { }
    fallback() external { }
}
contract SemanticsEquivalence15 {
    function foo() public payable {  fallback(); }
}
contract SemanticsEquivalence17 {
    function foo() public payable {  fallback();  }
    fallback() external {  }
}
contract SemanticsEquivalence18 {
    function foo() public payable {
