pragma solidity ^0.8.0;
contract ExampleStruct4{
    uint256 internal myStruct;
    constructor(){
        myStruct = 99;
        myStruct = 100;
        myStruct = 101;
        myStruct = 99*10;
        emit EventB2(bytes32("EventB"));
    }
}
contract Test{
    uint256 s;
    uint256 array[3];
    float a;
    bytes32 b;
    address c;
    bytes4 d;
    bool e;
    uint256 f;
    uint256 g;
    uint256 h;
    bytes4 i;
    bytes4 j;
    bytes4 k;
    constructor(){
        s = 99;
        s = 100;
        s = 101;
        a = 1;
        a = 1.12222;
        uint8 x;
        uint8 y;
        uint8 z;
        bytes4 aa;
        bytes4 ab;
        bytes4 ac;
        bytes4 ad;
        bool zzz;
        bytes4 cd;
        uint256 yyyy;
        yyyy = 1;
        yyyy = 1111;
        emit Event(bytes32("Event"));
        emit Event(byte(9));
        emit Event(bytes32("Event"),bytes32("222"));
        emit Event(bytes32(""),bytes32(""));
        emit Event( bytes32("Event"),bytes32("222")),bytes32(""),bytes4(1),bytes32("");
        emit Event(bytes32("Event"),bytes32("222"),bytes32("333"), bytes32("333"),bytes32(""),2,79,4).send(0,0);
        emit Event(bytes32("Event"),bytes32("222"),bytes32("333"),bytes32("333"),bytes32(""),2,79,4).send(68,6);
        emit Event(a,bytes32(""));
        emit Event(bytes32(""),bytes32(""),2+bytes32(""),bytes4(1),2+bytes32(""));
        emit Event(9.912,bytes32(""),bytes32("888"),9.912*7,-3+63,-2,5+10);
        emit Event(false,bytes32(""),bytes32("999"));
        emit Event (bytes32("Event"),2,3);
        emit Event(bytes3
