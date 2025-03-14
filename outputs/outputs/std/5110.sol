pragma solidity ^0.8.0;
contract Semantics1 is Semantics {
    uint data ;
    constructor(uint data) { this.data = data;
    add(this.data, data);
}
    function sum(int data1,int data2) public pure returns (uint sum)
{
    sum = data1 + data2;
}
    function get(uint value) public {
        isPresent[value]=true;

        value[value] = 100;
        value[value]=70;
        value[value]=50;
        value[value]=30;
    }
}

pragma solidity ^0.8.0;
contract Semantics2 {
    uint data = 7;
    uint public sum;
    constructor(uint data) { this.data = data;
    add(7, data);
}
    function add(uint data1, uint data2) public pure returns (uint sum)
{
    sum = data1 + data2;
}
    function get(uint value) public {
        value[value]=data;


        sum[value] = value[value] + data;
        value[value]=6;
    }
}

pragma solidity ^0.8.0;
contract Parent {
    semantics2 s1;
    constructor(semantics2 s1) {s1 = s1;}
    function f(uint data ) public pure
    {
        s1.sum = s1.sum(data,2);
    }
}

pragma solidity ^0.8.0;
contract Child is Parent
{
    constructor(semantics2 s1)  :  Parent(s1)
    { }
}

pragma solidity ^0.8.0;
contract SemiSemantics {
    uint public x =10;
    function set(uint x) public {  x = x; }
}

pragma solidity ^0.8.0;
contract SemiSemantics1{
    uint public y;
    functions {
        x = 10;
        set(10);
    }
    function set(uint x) public { y = x; }
}

pragma solidity ^0.8.0;
contract SemiSemantics2 {
    uint public y;
    constructor() public { y = 10; }
}

pragma solidity ^0.8.0;
contract SemiSemantics
