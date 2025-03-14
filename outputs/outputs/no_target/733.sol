pragma solidity ^0.8.0;
contract NewSolidityFunction {






    contract A{
        modifier test {
            printf("%g\t", getMyData());
            _;
        }
        function getMyData() public pure returns(uint){
            return 100;
        }
        function testFunc1() test pure returns(uint){
            return 100;
        }
    }

    contract B{
        modifier test {
            printf("%g\t", getMyData());
            _;
        }
        function getMyData() public pure returns(uint){
            return 110;
        }
        function testFunc2() test pure returns(uint){
            return 100;
        }
    }



    function f(A a){
        a.testFunc1();
    }
    function g(A a,B b){
        a.testFunc2();
        b.testFunc1();
    }


    uint my_memory_101 = 0;
    uint my_memory_102 = 0;
    uint my_memory_103 = 0;
    modifier test1(uint) pure returns(bool){
        if (true)
            return true;
        return true;
    }
    modifier test2{
        ++my_memory_101;
        if(true){
            my_memory_102 = 0;
            return true;
        }
        if(true)
            return true;
        my_memory_102 = 0;
        return true;
    }
