pragma solidity ^0.8.0;
contract EfficientComparisonMutatedGenericContract {
    uint256 public _value1;
    uint256 public _value2;
    function increment() public {
        _value1 += 100000;
        _value2 -= 3600000;
    }
    function getValue() public view returns (uint256) {
        return _value2;
    }
}
contract Test {
    struct RandomVariable{
     uint256 _value;
    }
}



contract ArrayTest is Test {
    using ArrayContract for ArrayContract.Array2D;
    using ArrayContract for ArrayContract.Array3D;
    using ArrayContract for ArrayContract.AddressContainer;
    using ArrayContract for ArrayContract.ByteContainer;
    RandomContract public _randomContractArrayOne;
    RandomContract public _randomContractArrayTwo;
    bytes32 public _byteArray2;
    bytes[] public _bytes3;
    Array2D public _2dArray;
    Array3D public _3dArray;
    ArrayContract.AddressContainer public _addressArray;
    ArrayContract.ByteContainer public _bytesContainer;
    Bytes347238523432328523452845234523852348432;
    constructor(){
        _randomContractArrayOne = new RandomContract();
        _randomContractArrayTwo = new RandomContract();
    }

    function incrementNumber1() public {
        uint number1 = _randomContractArrayOne.next().toUint();
        uint number2 = _randomContractArrayTwo.next().toUint();
        _randomContractArrayOne.increment();
        _randomContractArrayTwo.increment();
        uint number3 = number1 + number2;
        uint256 storage _v;
        assembly { _v := x }
        uint256 actual = (number1 + number2);
        Assert.equal(actual, (number2 * 2) - (number3 % number2));
        Assert.equal(number2, 2);
        Assert.equal(number3, actual - number2);
    }

    function testIncrementAllNumbersAtOnce() public {
        Array3D memory array = Array3D(_3dArray);
        uint256 one = array.addValue("One1",
