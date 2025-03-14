pragma solidity ^0.8.0;
 contract C {
function returnArray(uint[][][1] memory array) public pure returns(uint[][][1] memory){
    uint[][][1] memory temp;
    temp = array;
    temp[0][0] = 22;
    return temp;
}
}

pragma solidity ^0.8.0;
contract C {
function test1() public pure returns(uint[][][1] memory) {
    return Array();
}
function test2() public pure returns(uint[][][1] memory) {
    return Array(1, 1, 1, 1, 1, 1, 1, 1);
}
function test3(uint memory len) public pure returns(uint[][3] memory) {
    return Array(3, 2, 1);
}
function test4() public pure returns(uint[][][3] memory) {
    return Array(3,3,2,2,2,1,1);
}
function test5(uint memory len, uint memory len2) public pure returns(uint[][4] memory) {
    return Array(1,2,3,4);
}
function test11(uint[][][4] memory a, uint[][][2] memory b) public pure returns(uint [][][4] memory){
    return a;
}
function test12(uint[][][2] memory a, uint[][][4] memory b) public pure returns(uint [][][4] memory){
    return b;
}
function test13(uint[][][
