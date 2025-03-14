pragma solidity ^0.8.0;
contract complexContract {
    function use(uint256 a) public pure {
        Complex complex = new Complex();
        complex.number1 = 100;
        complex.number2 = 3;
        uint256 b = complex.result(0);
        uint256 c = complex.resultSigned();
    }
    struct Complex {
        uint256 number1;
        uint256 number2;
        uint256 result;
        uint256 resultSigned;
    }
}
