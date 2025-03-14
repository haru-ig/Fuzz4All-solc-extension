pragma solidity ^0.8.0;
contract SomeContract {
    struct SomeStruct {
        uint arrayMember;
        uint value;

        uint arrayMember1;
        uint value1;
    }

    uint counter = 0;

    function m() public view returns (SomeStruct) {
        SomeStruct memory returnStruct = SomeStruct({
            arrayMember: 123,
            value: 0,

            arrayMember1: 3,
            value1: 186,
        });
        returnStruct.value = 0;
        returnStruct.arrayMember1 = 6;

        return (returnStruct);
    }

    function test1() public {
        SomeStruct memory someStruct = m();
        uint _value = someStruct.value;
        uint _arrayMember1 = someStruct.arrayMember1;
        SomeStruct memory someStructVar2 = m();
    }

    function test2() public {
        SomeStruct memory someStruct2 = m();
        SomeStruct memory someStructVar3 = m();
        SomeStruct memory someStructVar3WithModif = m();
        SomeStruct memory s;

        s.value = 0;
        s.arrayMember = 10;
        s.arrayMember1 = 11;
        s.value1 = 100;
        SomeStruct memory someStructVar4 = m();

        assert(s.arrayMember == 10);

        assert(s.value == 0);

        SomeStruct memory someStructVar5 = SomeStruct(8, 5, 0, 1, 9);
        assert(s == someStructVar5);
        assert(counter == 2);

        assert(someStructVar3.arrayMember == 6);

        assert(someStructVar3.value == 1);

        assert(someStructVar3.arrayMember1 == 6);

        assert(someStructVar3.value1 == 0);

        counter++;
    }
}
