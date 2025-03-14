pragma solidity ^0.8.0;
contract S8Mutated12 {
    uint8 constant MAX = 2;
    uint8 constant MIN = 1;
    uint8 a;
    constructor () {
        a = 2;
    }
    function change2() public {
        a --;
        switch(a){
            case MIN:
                a++;
                break;
            case MAX:
                a--;
                break;
        }
    }
}
