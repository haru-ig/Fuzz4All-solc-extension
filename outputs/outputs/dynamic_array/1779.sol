pragma solidity ^0.8.0;
contract NotNestedFunction {
    uint256[] private nonStaticArray;


    function nonStaticArray() public nonReentrantNonPayable {
        nonStaticArray.push(1);
    }

}
contract InheritFromNonNestedContract extends NotNestedFunction {
    uint256[] private nonStaticArray;

    constructor(address _a) public {
        nonStaticArray.push(0xdeadbeef);
        nonStaticArray.push(0xdeadbeef);
    }

    function nonStaticArray() public nonReentrantNonPayable {
        emit nonStaticArrayAdded(nonStaticArray);
        uint256 a;
        a = nonStaticArray[1];
        uint256 b;
        b = nonStaticArray[1];
        emit nonStaticArrayInitialized(nonStaticArray);
    }
}
