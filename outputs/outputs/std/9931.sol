pragma solidity ^0.8.0;
contract S12Mutated13 {
    S12Mutated12 a;

    constructor () {
    }
    function change() public {

        (a).change();
        a.change2();
    }
    function change2() public {

        (a).change2();
    }
}
