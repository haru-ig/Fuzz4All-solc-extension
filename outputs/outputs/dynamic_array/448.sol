pragma solidity ^0.8.0;
contract test7
{
    struct s2 {
        uint z;
    }
    s2[] public myArray;
}
contract test9
{
    struct s2 {
        uint z;
    }
    s2[] public myArray;
    function test1() public
    {
        s2 memory a;
        a.z = 1;

        test2();
        test2(1);

        assert(a.z == 1);
        assert(testArraySize() == 2);
        s2[] storage b = new s2[](2);
        b[0].z = 1;
        b[1].z = 2;
        test5(b);
    }
    function test2(uint i) public pure
    {
        myArray.push(s2({z: 1}));
        assert(testArraySize() == 2);
        myArray[0].z = 1;
        myArray[1].z = 2;
        assert(myArray.length == 3);
    }
    function test2() public pure
    {
        test2(0);
        myArray.push(s2({z: 1}));
        assert(myArray.length == 3);
    }
    function testArraySize() public pure returns(uint) {
        return ((uint(1) << uint32(myArray.length)) - uint32(2));
    }
    function test5(s2[] storage a) view public
    {
        assert(1 == a.length);
        a.push(s2({z: 1}));
    }
 }
