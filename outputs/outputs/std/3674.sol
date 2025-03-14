pragma solidity ^0.8.0;
contract NoReturn {
    function add() public pure {
        assembly {
            let temp0 := add(42, 42)
            let temp1 := and(temp0, 0xffffffffffffffffffffffffffffffffffffffff)
            return store(add(temp1, 42), 32)
        }
    }

    function subtract() public pure {
        assembly {
            let temp0 := sub(8, 42)
            let temp1 := and(temp0, 0xffffffffffffffffffffffffffffffffffffffff)
            return store(sub(temp1, 42), 32)
        }
    }

    function multiply() public pure {
        assembly {
            let temp0 := mul(42, 8)
            let temp1 := and(temp0, 0xffffffffffffffffffffffffffffffffffffffff)
            return store(mul(temp1, 42), 32)
        }
    }

    function divide() public pure {
        assembly {
            let dividend := 42
            let divisor := 8
            let quotient := div(dividend, divisor)
            let remainder := sub(dividend, shl(mul(mul(quotient, mod(divisor, dividend)), dividend)))
            let result := extract(dividend, 32, divide(remainder, divisor))
            return store(result, 32)
        }
    }

    function equals() public pure {
        assembly {
            let eqres := eq(10000000000000000000, 10000000000000000000)
            let ltres := lt(1000000000000000000, 1000000000000000
