pragma solidity ^0.8.0;
contract FixedSizeStack {
    stack memory s;
    bool flag;
    function push(uint _x){
        flag=true;
    }
    function pop(){
        flag=true;
    }
    function copy() {
        flag=true;
    }
}
