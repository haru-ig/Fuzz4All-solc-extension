pragma solidity ^0.8.0;
library SemanticCheckMutated1 {

    modifier check1CheckedArithmetic(uint value) {
        uint myNum = 2;

        unchecked {
            require(myNum % 2 == 0);
            myNum = myNum / 2;
        }
        return;
    }


contract SemanticCheckMutated2 {
    uint value;

    modifier changeNumber {
        value = value + 1;
        return;
    }

    function f1()
        public
        changeNumber
        check1CheckedArithmetic(1)
    {
        uint myNum = value + 1;

        unchecked {
            require(myNum % 2 == 0);
            myNum = myNum / 2;
        }
        return;
    }

    function f2()
        public
        changeNumber
        check1CheckedArithmetic(1)
    {
        uint result = value + 1;
        require(result % 2 == 0);
        result = result / 2;
        unchecked {
            require(result % 2 == 0);
            result = result / 2;
        }
        return;
    }

    function f3()
        public
        changeNumber
        check1CheckedArithmetic(1)
    {
        value = 2;
        uint myNum = value + 1;

        unchecked {
            require(myNum % 2 == 0);
            myNum = myNum / 2;
        }
        return;
    }

    function f4()
        public
        changeNumber
        check1CheckedArithmetic(1)
    {
        value = 2;
        uint myNum = value + 1;

        unchecked {
            require(myNum % 2 == 0);
            myNum = myNum / 2;
        }
        return;
    }

    function f5()
        public
        changeNumber
        check1CheckedArithmetic(1)
    {
        value = 2;
        uint myNum = value + 1;

        unchecked {
            require(myNum % 2 == 0);
            myNum = myNum / 2;
        }
        return;
    }
}


contract SemanticCheckMutated3 {
    modifier test() {
        uint myNum = 2;
        unchecked {
            require(myNum % 2 == 0);
            myNum = myNum / 2;
