pragma solidity ^0.8.0;
contract Modification {
    struct Data {
        uint foo;
    }
    Data memory dataFirst;
    Data memory dataSecond;
    constructor () public {
        dataFirst = dataSecond;
    }
    function fTest() public {
        if (dataFirst.foo!= 2) {
            dataFirst.foo = dataSecond.foo;
        } else {
        }
    }
    function fSubroutine() public {
        Data memory dataNewFirst;
        Data memory dataNewSecond;

        dataNewFirst = dataFirst;
        dataNewSecond = dataSecond;
        dataNewFirst.foo = dataNewFirst.foo + 0;
        dataNewSecond.foo = dataNewSecond.foo + 0;
        if (dataNewFirst.foo!= 0) {
            dataNewFirst.foo = dataNewSecond.foo;
        }
    }
}
