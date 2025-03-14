pragma solidity ^0.8.0;
contract semanticallyequivalent14
{
    uint constant x = 1;
    uint public y;
    function test()public {
        x = 1;
        y = 10;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent15
{
    uint[] public numbers = [1,2];
    function test()public {
        for(uint i; i < 5; i++) {
            numbers[i] = 10;
        }
        if(numbers.length!= 5) {
            return;
        }
        if(numbers[0]!= 1) {
            return;
        }
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent16
{
    uint number;
    function test()public returns(int) {
        number = 1;
        return number;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent17
{
    uint[1] a;
    uint myNumber;
    function test()public{ a.push(myNumber); }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent18
{
    uint public x;
    uint public y;
    function test()public {
    x = 1;
    y = 10;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent19
{
    uint[16] b;
    uint public x;
    uint public y;
    function test()public {
    x = 1;
    y = 10;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent20
{
    struct MyStruct {
        uint x;
        uint y;
    }
    function test()public view returns(MyStruct) {
    MyStruct memory s;
    s.x = x;
    s.y = y;
    return s;
    }
}

pragma solidity ^0.8.0;
contract semanticallyequivalent21
{
    uint public x = 10;
    function test()public {
        if (msg.value < x) {
            return;
        }
        uint x = msg.value;
        if (true) {
            return;
        }
        if (false) {
            return;
        }
    }
}

pragma solidity ^0.8.0
