pragma solidity ^0.8.0;
contract Test49Mutant {
    mapping (uint => uint) public y;
    uint a;
    uint x;
    constructor() public{
        a = 4;
        y[3] = 44;
        write2();
    }
    function map2() public {
        y[3] = 43;
    }
    function write2() public {
        y[4] = 44;
    }
}
library Test49 {
    function print() public {
        Test49Mutant x = new Test49Mutant();
        x.map2();
        x.write2();
    }
}


pragma solidity ^0.8.0;
contract Test49Mutant {
    mapping (uint => uint) public y;
    uint a;
    uint x;
    emit Test49(2, 42);
    constructor() public{
        a = 4;
    }
    function map2() public {
        y[3] = 42;
        emit Test49(3, 42);
        emit Test49(4, 42);
    }
    function write2() public {
        emit Test49(4, 42);
        y[6] = 42;
        emit Test49(3, 42);
        emit Test49(2, 42);
    }
}
