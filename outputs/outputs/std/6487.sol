pragma solidity ^0.8.0;
contract Array {

    uint value = 5;
}

pragma solidity ^0.8.0;
contract Array {

    address childArrayCreator;
    address childArrayOperations;
    address childArithmeticOperations;
    function initArrayCreator(address _childArrayCreator) {
        childArrayCreator = _childArrayCreator;
    }
    function initArrayOperations(address _childArrayOperations) {
        childArrayOperations = _childArrayOperations;
    }
    function initArithmeticOperations(address _childArithmeticOperations) {
        childArithmeticOperations = _childArithmeticOperations;
    }
}
