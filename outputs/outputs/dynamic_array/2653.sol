pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_rewritten3{
    struct Element{
        uint p0;
        uint p1;
    }
    uint mynum;
    Element[] memory myarray;
    constructor(){
        for(uint i = 0; i < 10; i++)
        {

            assert(myarray[i].p1 == i);

            assert(myarray[i].p0 == myarray.length);
        }
        for(uint i = 0; i < 10; i++)
        {



            assert(myarray[i].p0 == myarray.length);
        }
    }
}
pragma solidity ^0.8.0;
contract SemanticEquality_ArrayMutations17_rewritten4
{
    struct MyStruct1{
        uint a;
        uint b;
        uint c;
    }
    struct MyStruct1CopyConstructor {
        uint a;
        uint b;
        uint c;
    }
    MyStruct1[] memory mystructarray;
    uint member1;
    uint member2;
    mapping(uint => MyStruct1) memory mapmember;
    mapping(uint => MyStruct1CopyConstructor) memory mapmemberCopy;
    uint[] memory mynum;
    uint member3;
    uint member4;
    uint member5;
    uint member6;
    uint member7;
    uint member8;
    uint member9;
    uint member10;
    uint member11;
    uint member12;
    uint member13;
    uint member14;
    uint member15;
    uint member16;
    uint member17;
    uint member18;
    uint member19;
    uint member20;
    uint member21;
    uint member22;
    uint member23;
    uint member24;
    uint member25;
    uint member26;
    uint member27;
    uint member28;
    uint member29;
