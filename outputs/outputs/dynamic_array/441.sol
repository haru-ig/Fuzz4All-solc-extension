pragma solidity ^0.8.0;
contract test5
{
    function f() pub {
        uint _i;
        for(_i = 0; _i < 12; _i++){
            myArray[_i].z = 10 * _i;
        }
    }
}

pragma solidity ^0.8.0;
contract test4
{
    struct s2 {
        uint z;
    }
    uint myUint;
    s2[] public myArray;
    uint[] public myUintArray;

    function f() pub {
        myUint = 1;
        myUintArray.push(2);
        myArray.push(s2(0));
    }
}

pragma solidity ^0.8.0;
contract test3
{
    struct s2 {
        uint z;
    }
    uint myUint;
    s2[] public myArray;

    function f() pub {
        if (true) {
            myUint = 1;
            myArray.push(s2(0));
        }
        else {
            myUint = 2;
            myUintArray.push(2);
            myArray.push(s2(0));
        }
    }
}

pragma solidity ^0.8.0;
contract test2
{
    struct s2 {
        uint z;
    }
    uint myUint;
    s2[] public myArray;

    function f() pub throws {
        myUint = 1;
        myUintArray.push(2);
        myArray.push(s2(0));
    }
}

pragma solidity ^0.8.0;
contract test1
{
    struct s2 {
        uint z;
    }
    uint myUint;
    s2[] public myArray;

    function g() public {
        throw myUint = 1;
    }

    function f() pub {
        myUint = 2;
        try {
            g();
        }
        catch(uint(0)) {
            uint _i;
            for(_i = 0; _i < 12; _i++){
            }
        }
    }
}
