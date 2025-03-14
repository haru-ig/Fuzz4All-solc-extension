pragma solidity ^0.8.0;
contract Test2 {
    mapping(uint => uint[]) s2;
    constructor () {
        uint[4] storage i;
        i[0] = 0;
        s2[0] = i;
    }
    function modify(uint[] storage s20, uint[] memory a){
        s20.pop();
    }
}
