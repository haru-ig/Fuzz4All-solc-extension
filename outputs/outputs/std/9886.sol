pragma solidity ^0.8.0;
contract S8Mutated7 {
    uint x;
    bool y;
    uint z;
    constructor () {
        x = 99;
        y = true;
        z = 100;
    }
    function change1() public {
        x++;
        z--;
    }
    function change2() public {
        x++;
        z++;
    }
    function change3() public {
        x--;
        z--;
    }
    function change4() public {
        x--;
        z++;
    }
    function change5() public {
        z--;
        y = true;
    }
    function change6() public {
        z--;
        y = false;
    }
    function change7() public {
        z++;
        y = true;
    }
    function change8() public {
        z++;
        y = false;
    }
}
